import { NativeModules } from 'react-native'

const RNKeepScreenOn = NativeModules['RNKeepScreenOn'];
if(!RNKeepScreenOn) throw new Error('Not found module');

type KeepScreenOnType = {
    on: () => void;
    off: () => void;
}

const KeepScreenOn: KeepScreenOnType = {
    on: RNKeepScreenOn.on,
    off: RNKeepScreenOn.off
}

export default KeepScreenOn;
