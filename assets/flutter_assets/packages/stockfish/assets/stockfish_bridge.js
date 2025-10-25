const _stockfish = {wasm: null, legacy: null}

const _wasm = 'wasm'
const _legacy = 'legacy'
let _name;

function analyzeUci(uci) {
    _stockfish[_name].postMessage(uci);
}

function sendToDart(event) {
    window.setCallback(event)
}

function wasmThreadsSupported() {
    // WebAssembly 1.0
    const source = Uint8Array.of(0x0, 0x61, 0x73, 0x6d, 0x01, 0x00, 0x00, 0x00);
    if (
        typeof WebAssembly !== "object" ||
        typeof WebAssembly.validate !== "function"
    )
        return false;
    if (!WebAssembly.validate(source)) return false;
    // SharedArrayBuffer
    if (typeof SharedArrayBuffer !== "function") return false;
    // Atomics
    if (typeof Atomics !== "object") return false;
    // Shared memory
    const mem = new WebAssembly.Memory({shared: true, initial: 8, maximum: 16});
    if (!(mem.buffer instanceof SharedArrayBuffer)) return false;
    // Structured cloning
    try {
        // You have to make sure nobody cares about these messages!
        window.postMessage(mem, "*");
    } catch (e) {
        return false;
    }
    // Growable shared memory (optional)
    try {
        mem.grow(8);
    } catch (e) {
        return false;
    }
    return true;
}

async function initWasmStockfish() {
    if (_stockfish.wasm != null) {
        console.log(`wasm stockfish already initialized, use stored`);
        _name = _wasm
        window.stockfishInitialized("true")
        return
    }

    console.log(`initWasmStockfish`);
    _stockfish.wasm = await Stockfish();
    _stockfish.wasm.addMessageListener(sendToDart);
    _name = _wasm

    window.stockfishInitialized("true")

}

async function initLegacyStockfish() {
    if (_stockfish.legacy != null) {
        console.log(`legacy stockfish already initialized, use stored`);
        _name = _legacy
        window.stockfishInitialized("true")
        return
    }

    console.log(`initLegacyStockfish`);
    _stockfish.legacy = new Worker('assets/packages/stockfish/assets/stockfish_legacy.js');
    _stockfish.legacy.addEventListener('message', (e) => sendToDart(e.data));
    _name = _legacy

    window.stockfishInitialized("true")

}