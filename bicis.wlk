class Bicicleta {
  const rodado
  const largo
  const marca
  var property accesorios = []
  
  method rodado() = rodado
  
  method largo() = largo
  
  method marca() = marca
  
  method altura() = (rodado * 2.5) + 15
  
  method velocidadCrucero() = if (largo > 120) rodado + 6 else rodado + 2
  
  method carga() = accesorios.sum({ a => a.carga() })
  
  method peso() = (rodado / 2) + self.pesoAccesorios()
  
  method pesoAccesorios() = accesorios.sum({ a => a.peso() })
  
  method tieneLuz() = accesorios.any({ a => a.esLuminoso() })
  
  method cantidadAccesoriosLivianos() = accesorios.count({ a => a.peso() < 1 })
  
  method agregarAccesorio(unAccesorio) {
    accesorios.add(unAccesorio)
  }
  
  method quitarAccesorio(unAccesorio) {
    accesorios.remove(unAccesorio)
  }
}

class Farolito {
  method peso() = 0.5
  
  method carga() = 0
  
  method esLuminoso() = true
}

class Canasto {
  const volumen
  
  method peso() = volumen / 10
  
  method carga() = volumen * 2
  
  method esLuminoso() = false
}

class Morral {
  const largo
  var tieneOjoDeGato
  
  method ponerOjoDeGato() {
    tieneOjoDeGato = true
  }
  
  method quitarOjoDeGato() {
    tieneOjoDeGato = false
  }
  
  method peso() = 1.2
  
  method carga() = largo / 3
  
  method esLuminoso() = tieneOjoDeGato
}