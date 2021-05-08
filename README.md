
## Cliclo do TDD
- RED, eu faço meu teste falhar
- GREEN, eu faço meu teste funcionar
- Refactor, agora sim eu refatoro meu código


## Testes
- Devem ser confiáveis.
- Devem ser fáceis de escrever.
- Devem ser fáceis de entender hoje e no futuro.
- Devemos ser agéis, mas nunca fazer correndo e de qualquer jeito.


## 4 fases do xUnit
- Setup (System under test)
- Exercise 
- Verify
- Teardown

## Para customizar os testes use o arquivo .rspec
```ruby
# a linha do spec_helper é padrão 
--require spec_helper
# mostra os títulos dos testes
--format documentation
```
## Executando testes com rspec

```bash
# todos
rspec .

# apenas um arquivo de teste
rspec spec/calculator/calculator_spec.rb

# apenas um título do arquivo de teste
rspec spec/calculator/calculator_spec.rb -e 'with positive numbers'

# apenas uma linha do arquivo de teste
rspec spec/calculator/calculator_spec.rb:12

```
