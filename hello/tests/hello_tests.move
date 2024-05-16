#[test_only]
module hello::hello_tests {
    use hello::hello;
    use sui::tx_context::{Self, TxContext};

    #[test]
    fun test_hello() {
        let mut ctx = tx_context::dummy();
        hello::mint_to_sender( 
            b"Hello",
            b"Hello, BenFen",
            b"https://cryptomoveup.github.io/dapp-examples/static/hello.png",
            &mut ctx
        );
    }
}
