# Procesador de 8 Bits en FPGA

Este proyecto se centra en el diseño, desarrollo e implementación de un procesador de 8 bits en un FPGA, utilizando la herramienta Quartus Prime Lite y un FPGA MAX10 de Intel. El procesador es capaz de ejecutar un conjunto básico de instrucciones, incluida la cuenta de Fibonacci, que se despliega en un display de 7 segmentos.

## Descripción

Este proyecto consiste en el diseño y desarrollo de un procesador de 8 bits en FPGA. Utiliza VHDL para la creación de los componentes, permitiendo su implementación en un FPGA MAX10. El sistema es capaz de realizar operaciones aritméticas y lógicas básicas, y gestiona tanto instrucciones como datos.

## Objetivos del Proyecto

- Diseñar y desarrollar un procesador funcional de 8 bits capaz de ejecutar un conjunto básico de instrucciones.
- Familiarizarse con el entorno de desarrollo Quartus Prime Lite y la implementación en el FPGA MAX10.
- Demostrar el uso de VHDL para describir y simular componentes de hardware digital.

## Herramientas Utilizadas

- **Quartus Prime Lite**: Herramienta de diseño de FPGA para síntesis, implementación y verificación de diseños digitales.
- **FPGA MAX10**: Dispositivo de bajo costo y consumo, adecuado para proyectos de procesamiento y E/S.
- **VHDL**: Lenguaje de descripción de hardware para escribir las descripciones de los componentes del procesador.

## Arquitectura del Procesador

La arquitectura del procesador incluye los siguientes componentes:

- **Unidad de Control**: Maneja la ejecución de instrucciones.
- **ALU (Unidad Aritmética Lógica)**: Realiza operaciones aritméticas y lógicas.
- **Registros**: Almacenan datos temporales para operaciones.
- **Sistema de Memoria**: Almacena instrucciones y datos.

## Programas Individuales

1. **ALU_8BITS**: Define la estructura y funcionamiento de la ALU, capaz de realizar operaciones aritméticas (suma, resta) y lógicas (AND, OR, XOR), así como indicadores de estado (acarreo, cero, desbordamiento).
   
2. **BIT_SLICE**: Implementa un circuito para operaciones bit a bit entre dos bits de entrada y un bit de acarreo, permitiendo operaciones lógicas y aritméticas a nivel de bit.

3. **DATAPATH**: Componente que gestiona la transferencia de datos entre registros, memoria y la ALU, posibilitando la ejecución de instrucciones.

4. **CPU**: Estructura principal de la CPU del procesador, incluyendo registros, unidad de control y circuitos para operaciones básicas.

5. **MEMORIA**: Simula la memoria del procesador, con capacidad para leer y escribir datos, incluyendo una memoria RAM (para datos) y ROM (para instrucciones).

## Implementación

Cada componente del procesador fue diseñado en VHDL siguiendo una estructura modular y jerárquica. Se crearon archivos individuales para cada módulo, lo que facilita su verificación y depuración. Luego, todos los módulos se integraron para construir el procesador completo.

## Instrucciones de Uso

1. Clona este repositorio en tu máquina local:
   ```bash
   git clone https://github.com/tuusuario/tu-repositorio.git
2. Abre el proyecto en Quartus Prime Lite.
3. Compila cada módulo y verifica que no haya errores de sintaxis.
4. Integra los módulos en el diseño completo del procesador de 8 bits.
5. Ejecuta la implementación en el FPGA MAX10 y realiza pruebas con los programas de ejemplo.




