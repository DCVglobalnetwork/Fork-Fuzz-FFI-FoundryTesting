## Foundry Advanced

1. Mainnet fork
https://www.alchemy.com/

Create new app and get new API KEY 

![Screenshot 2024-05-23 102515](https://github.com/DCVglobalnetwork/Fork-Fuzz-FFI-FoundryTesting/assets/105791829/45a5af89-50dd-43ca-bee2-330b1d0650d0)

```shell
forge test --fork-url <PLACE YOUR URL HERE>
```

![Screenshot 2024-05-23 102144](https://github.com/DCVglobalnetwork/Fork-Fuzz-FFI-FoundryTesting/assets/105791829/7a08d062-17c3-40d6-a7e1-09a6afa24f9e)


![Screenshot 2024-05-23 102240](https://github.com/DCVglobalnetwork/Fork-Fuzz-FFI-FoundryTesting/assets/105791829/ac9d24e2-b7a8-4b2a-96f4-0e3b9a4a4f09)



2. Fuzzing (assume, bound)





3. FFI

```shell
cast ffi_test.txt
```
or 

```shell
forge test --mt testFFI --ffi -vvv
```

![Screenshot 2024-05-23 112617](https://github.com/DCVglobalnetwork/Fork-Fuzz-FFI-FoundryTesting/assets/105791829/69f3e640-f7cb-468f-abb0-29e5ef1d7220)


## Documentation

https://book.getfoundry.sh/

### Format

```shell
$ forge fmt
```

### Cast

```shell
$ cast ffi_test.txt
```

![Screenshot 2024-05-23 112525](https://github.com/DCVglobalnetwork/Fork-Fuzz-FFI-FoundryTesting/assets/105791829/b7ba0507-6009-49c4-a381-ecd3e24223b9)


### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the project.
2. Create a new branch: `git checkout -b feature-name`
3. Make your changes and commit them: `git commit -m 'Add some feature'`
4. Push to the branch: `git push origin feature-name`
5. Submit a pull request.

Please make sure to update tests as appropriate.


## Contact

Follow me for more projects and updates also buiding our decentralized network

Magda Jankowska - https://github.com/DCVglobalnetwork


Project Link: [https://github.com/DCVglobalnetwork/Fork-Fuzz-FFI-FoundryTesting](https://github.com/DCVglobalnetwork/Fork-Fuzz-FFI-FoundryTesting)


***Master Foundry for Security Testing***


***Set up Foundry in your development environment.***
***Start with basic testing and move on to more complex fuzz testing.***


```shell
git clone https://github.com/foundry-rs/foundry.git
cd foundry
cargo install --path .
```



