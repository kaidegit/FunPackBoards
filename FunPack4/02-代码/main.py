import sys
import binascii
import time
from bluepy.btle import UUID, Peripheral


class BleDevice:
    def __init__(self, mac):
        self.mac = mac

    def connect(self):
        self.p = Peripheral(self.mac, "public")

    def getTemperature(self):
        services = self.p.getServiceByUUID("181A")
        chlist = services.getCharacteristics()
        ch = chlist[0]
        temphex = binascii.b2a_hex(ch.read()).decode()
        temphex = temphex[2:4]+temphex[0:2]
        temp = int(temphex, 16)
        return temp / 100

    def setLedOn(self):
        services = self.p.getServiceByUUID("1815")
        chlist = services.getCharacteristics()
        led = chlist[1]
        led.write(b'\x01', True)

    def setLedOff(self):
        services = self.p.getServiceByUUID("1815")
        chlist = services.getCharacteristics()
        led = chlist[1]
        led.write(b'\x00', True)


if __name__ == '__main__':
    BG22 = BleDevice("84:2e:14:31:ba:12")
    BG22.connect()
    while(True):
        temp = BG22.getTemperature()
        print(temp)
        if temp > 27:
            BG22.setLedOn()
        else:
            BG22.setLedOff()
        time.sleep(1)
