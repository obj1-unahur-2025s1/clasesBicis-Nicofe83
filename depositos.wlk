import bicis.*

class Deposito {
  const bicis = [bici1, bici2, bici3]
  
  method agregarBici(bici) {
    bicis.add(bici)
  }
  
  method quitarBici(bici) {
    bicis.add(bici)
  }
  
  method bicisRapidas() = bicis.filter({ b => b.velocidadCrucero() > 25 })
  
  method marcasDeBicis() = bicis.map({ b => b.marca() }).asSet()
  
  method esNocturno() = bicis.all({ b => b.tieneLuz() })
  
  method tieneBicicletaParaLlevar(carga) = bicis.any({ b => b.carga() > carga })
}

const depo = new Deposito()

const bici1 = new Bicicleta(
  rodado = 28,
  largo = 150,
  marca = "Olmo",
  accesorios = [farolito1]
)

const bici2 = new Bicicleta(
  rodado = 26,
  largo = 110,
  marca = "Legnano",
  accesorios = [farolito1, canasto1, morral1]
)

const bici3 = new Bicicleta(
  rodado = 20,
  largo = 90,
  marca = "Legnano",
  accesorios = [morral2]
)

const farolito1 = new Farolito()

const canasto1 = new Canasto(volumen = 8)

const morral1 = new Morral(largo = 21, tieneOjoDeGato = true)

const morral2 = new Morral(largo = 6, tieneOjoDeGato = false)