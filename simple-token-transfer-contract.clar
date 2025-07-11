(define-constant token-name "MyToken")
(define-constant token-symbol "MTK")
(define-constant token-decimals u6)
(define-constant initial-supply u1000000)

(define-data-var total-supply uint initial-supply)
(define-map balances ((owner principal)) ((balance uint)))

(define-public (initialize (recipient principal))
  (begin
    (asserts! (is-eq tx-sender (as-contract tx-sender)) (err u100))
    (map-set balances ((owner recipient)) ((balance initial-supply)))
    (ok true)
  )
)

(define-read-only (get-balance (account principal))
  (default-to u0 (get balance (map-get? balances ((owner account)))))
)

(define-public (transfer (recipient principal) (amount uint))
  (let (
        (sender tx-sender)
        (sender-balance (default-to u0 (get balance (map-get? balances ((owner sender))))))
        (recipient-balance (default-to u0 (get balance (map-get? balances ((owner recipient))))))
       )
    (begin
      (asserts! (>= sender-balance amount) (err u101))

      (map-set balances ((owner sender)) ((balance (- sender-balance amount))))
      (map-set balances ((owner recipient)) ((balance (+ recipient-balance amount))))

      (ok true)
    )
  )
)
