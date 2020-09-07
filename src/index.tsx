import React from 'react'
import { NativeModules } from 'react-native'

const RNKeepScreenOn = NativeModules.RNKeepScreenOn
if (!RNKeepScreenOn) throw new Error('Not found module')

type KeepScreenOnType = {
  on: () => void
  off: () => void
  useKeepScreenOn: () => void
}

const KeepScreenOn: KeepScreenOnType = {
  on: RNKeepScreenOn.on,
  off: RNKeepScreenOn.off,
  useKeepScreenOn: () => {
    React.useEffect(() => {
      RNKeepScreenOn.on()
      return () => RNKeepScreenOn.off()
    }, [])
  },
}

export default KeepScreenOn
