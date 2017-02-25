## Fees and Taxes - Cambodia

Last updated on February 25, 2017. Previous versions and diffs are [available here](http://github.com/bongloy/bongloy-terms).

### Fees

Bongloy declares *all* fees charged as revenue. Since Bongloy is providing a service VAT applies. If your business is registered with the General Department of Taxation you can claim this VAT back as an expense.

Bongloy's standard transaction fee is 3.9% + $0.40 per successful transaction (VAT exclusive).

The VAT inclusive transaction fee is calculated as follows:

    tf = 1.1 x (0.039 * ta + 0.40)

where:

    tf = Transaction Fee

For example the VAT inclusive transaction fee on a $100.00 transaction is:

    tf = 1.1 x (0.039 * $100.00 + 0.40)
    tf = 1.1 x ($3.90 + $0.40)
    tf = 1.1 x $4.30
    tf = $4.73

To calculate amount the VAT in the transaction fee:

    vat = 0.1 x tf / 1.1
    vat = 0.1 x $4.73 / 1.1
    vat = $0.43

### Taxes

Bongloy declares *all* revenue earned by your business as an expense.

This means the following:

For businesses registered with the General Department of Taxation, Bongloy will provide your business' VAT TIN when declaring the expense. It's your business' responsibility to pay the appropriate VAT if applicable. If VAT is applicable for your business you should include it in the price of your product service.

For businesses or individuals *not* registered with the General Department of Taxation 15% Withholding Tax applies on all transactions.

The Withholding Tax is applied as follows:

    wt = 0.15 x ta

where:

    wt = Withholding Tax
    ta = Transaction Amount

For example the Withholding Tax (wt) applied on a $100.00 transaction is:

    wt = 0.15 x $100.00
    wt = $15.00

To include the Withholding Tax in the price of your product or service you can use the following formula:

    wt = 0.15 x ta
    wt + p = ta
    (0.15 x ta) + p = ta
    p = ta - (0.15 x ta)
    p = 0.85 x ta
    ta = p / 0.85

where:

    ta = Transaction Amount
    p  = Price of Product or Service

For example if your product or service costs $100.00 then the transaction amount is:

    ta = p / 0.85
    ta = $100.00 / 0.85
    ta = $117.65

which gives the following Withholding Tax:

    wt = 0.15 x $117.65
    wt = $17.65
