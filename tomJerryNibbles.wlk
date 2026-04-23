object tom {
    var energia = 50

    method comer(unRaton) {
        energia = energia +  12 + unRaton.peso()
    }
    method correr(distancia) {
        energia = energia - (distancia / 2)
    }
    method velocidadMaxima() {
        return 5 +(energia / 10.0)
    }

    method puedeCazar(distancia) {
        return energia > (distancia / 2)
    }

    method cazar (raton, distancia){
        if (self.puedeCazar(distancia)) {
            self.correr(distancia)
            self.comer(raton)
        }
    }
    
    method energia() = energia
    
}

object jerry {
    var edad = 2

    method peso() = edad * 20
    method cumplirAnio() {edad = edad + 1}  
}

object nibbles {
    method peso() = 35 
}

// Inventar otro ratón
object boton {
    var tieneQueso = true
    method peso() = if (tieneQueso) 20 else 10
    method perderQueso() { tieneQueso = false }
}

