package io.flutter.embedding.android;

import android.view.KeyEvent;
import io.flutter.Log;
import io.flutter.embedding.android.KeyData;
import io.flutter.embedding.android.KeyboardManager;
import io.flutter.embedding.android.KeyboardMap;
import io.flutter.plugin.common.BinaryMessenger;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class KeyEmbedderResponder implements KeyboardManager.Responder {
    private static final String TAG = "KeyEmbedderResponder";
    private final BinaryMessenger messenger;
    private final HashMap<Long, Long> pressingRecords = new HashMap<>();
    private final HashMap<Long, KeyboardMap.TogglingGoal> togglingGoals = new HashMap<>();
    private final KeyboardManager.CharacterCombiner characterCombiner = new KeyboardManager.CharacterCombiner();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.flutter.embedding.android.KeyEmbedderResponder$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$flutter$embedding$android$KeyData$Type;

        static {
            int[] iArr = new int[KeyData.Type.values().length];
            $SwitchMap$io$flutter$embedding$android$KeyData$Type = iArr;
            try {
                iArr[KeyData.Type.kDown.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$flutter$embedding$android$KeyData$Type[KeyData.Type.kUp.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$flutter$embedding$android$KeyData$Type[KeyData.Type.kRepeat.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public KeyEmbedderResponder(BinaryMessenger binaryMessenger) {
        KeyboardMap.TogglingGoal[] togglingGoals;
        this.messenger = binaryMessenger;
        for (KeyboardMap.TogglingGoal togglingGoal : KeyboardMap.getTogglingGoals()) {
            this.togglingGoals.put(Long.valueOf(togglingGoal.logicalKey), togglingGoal);
        }
    }

    private static KeyData.Type getEventType(KeyEvent keyEvent) {
        boolean z10;
        if (keyEvent.getRepeatCount() > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        int action = keyEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                return KeyData.Type.kUp;
            }
            throw new AssertionError("Unexpected event type");
        } else if (z10) {
            return KeyData.Type.kRepeat;
        } else {
            return KeyData.Type.kDown;
        }
    }

    private Long getLogicalKey(KeyEvent keyEvent) {
        Long l10 = KeyboardMap.keyCodeToLogical.get(Long.valueOf(keyEvent.getKeyCode()));
        if (l10 != null) {
            return l10;
        }
        return Long.valueOf(keyOfPlane(keyEvent.getKeyCode(), KeyboardMap.kAndroidPlane));
    }

    private Long getPhysicalKey(KeyEvent keyEvent) {
        long scanCode = keyEvent.getScanCode();
        if (scanCode == 0) {
            return Long.valueOf(keyOfPlane(keyEvent.getKeyCode(), KeyboardMap.kAndroidPlane));
        }
        Long l10 = KeyboardMap.scanCodeToPhysical.get(Long.valueOf(scanCode));
        if (l10 != null) {
            return l10;
        }
        return Long.valueOf(keyOfPlane(keyEvent.getScanCode(), KeyboardMap.kAndroidPlane));
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0148 A[LOOP:2: B:68:0x0142->B:70:0x0148, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean handleEventImpl(android.view.KeyEvent r18, io.flutter.embedding.android.KeyboardManager.Responder.OnKeyEventHandledCallback r19) {
        /*
            Method dump skipped, instructions count: 339
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.flutter.embedding.android.KeyEmbedderResponder.handleEventImpl(android.view.KeyEvent, io.flutter.embedding.android.KeyboardManager$Responder$OnKeyEventHandledCallback):boolean");
    }

    private static long keyOfPlane(long j10, long j11) {
        return (j10 & KeyboardMap.kValueMask) | j11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$sendKeyEvent$2(KeyboardManager.Responder.OnKeyEventHandledCallback onKeyEventHandledCallback, ByteBuffer byteBuffer) {
        boolean z10;
        Boolean bool = Boolean.FALSE;
        if (byteBuffer != null) {
            byteBuffer.rewind();
            if (byteBuffer.capacity() != 0) {
                if (byteBuffer.get() != 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                bool = Boolean.valueOf(z10);
            }
        } else {
            Log.w(TAG, "A null reply was received when sending a key event to the framework.");
        }
        onKeyEventHandledCallback.onKeyEventHandled(bool.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$synchronizePressingKey$0(KeyboardMap.KeyPair keyPair, long j10, KeyEvent keyEvent) {
        synthesizeEvent(false, Long.valueOf(keyPair.logicalKey), Long.valueOf(j10), keyEvent.getEventTime());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$synchronizePressingKey$1(KeyboardMap.KeyPair keyPair, long j10, KeyEvent keyEvent) {
        synthesizeEvent(false, Long.valueOf(keyPair.logicalKey), Long.valueOf(j10), keyEvent.getEventTime());
    }

    private void sendKeyEvent(KeyData keyData, final KeyboardManager.Responder.OnKeyEventHandledCallback onKeyEventHandledCallback) {
        BinaryMessenger.BinaryReply binaryReply;
        if (onKeyEventHandledCallback == null) {
            binaryReply = null;
        } else {
            binaryReply = new BinaryMessenger.BinaryReply() { // from class: io.flutter.embedding.android.s
                @Override // io.flutter.plugin.common.BinaryMessenger.BinaryReply
                public final void reply(ByteBuffer byteBuffer) {
                    KeyEmbedderResponder.lambda$sendKeyEvent$2(KeyboardManager.Responder.OnKeyEventHandledCallback.this, byteBuffer);
                }
            };
        }
        this.messenger.send(KeyData.CHANNEL, keyData.toBytes(), binaryReply);
    }

    private void synthesizeEvent(boolean z10, Long l10, Long l11, long j10) {
        KeyData.Type type;
        KeyData keyData = new KeyData();
        keyData.timestamp = j10;
        if (z10) {
            type = KeyData.Type.kDown;
        } else {
            type = KeyData.Type.kUp;
        }
        keyData.type = type;
        keyData.logicalKey = l10.longValue();
        keyData.physicalKey = l11.longValue();
        keyData.character = null;
        keyData.synthesized = true;
        keyData.deviceType = KeyData.DeviceType.kKeyboard;
        if (l11.longValue() != 0 && l10.longValue() != 0) {
            if (!z10) {
                l10 = null;
            }
            updatePressingState(l11, l10);
        }
        sendKeyEvent(keyData, null);
    }

    public Map<Long, Long> getPressedState() {
        return Collections.unmodifiableMap(this.pressingRecords);
    }

    @Override // io.flutter.embedding.android.KeyboardManager.Responder
    public void handleEvent(KeyEvent keyEvent, KeyboardManager.Responder.OnKeyEventHandledCallback onKeyEventHandledCallback) {
        if (!handleEventImpl(keyEvent, onKeyEventHandledCallback)) {
            synthesizeEvent(true, 0L, 0L, 0L);
            onKeyEventHandledCallback.onKeyEventHandled(true);
        }
    }

    void synchronizePressingKey(KeyboardMap.PressingGoal pressingGoal, boolean z10, long j10, final long j11, final KeyEvent keyEvent, ArrayList<Runnable> arrayList) {
        KeyboardMap.KeyPair[] keyPairArr = pressingGoal.keys;
        boolean[] zArr = new boolean[keyPairArr.length];
        Boolean[] boolArr = new Boolean[keyPairArr.length];
        int i10 = 0;
        boolean z11 = false;
        while (true) {
            KeyboardMap.KeyPair[] keyPairArr2 = pressingGoal.keys;
            boolean z12 = true;
            if (i10 >= keyPairArr2.length) {
                break;
            }
            final KeyboardMap.KeyPair keyPair = keyPairArr2[i10];
            boolean containsKey = this.pressingRecords.containsKey(Long.valueOf(keyPair.physicalKey));
            zArr[i10] = containsKey;
            if (keyPair.logicalKey == j10) {
                int i11 = AnonymousClass1.$SwitchMap$io$flutter$embedding$android$KeyData$Type[getEventType(keyEvent).ordinal()];
                if (i11 != 1) {
                    if (i11 != 2) {
                        if (i11 == 3) {
                            if (!z10) {
                                arrayList.add(new Runnable() { // from class: io.flutter.embedding.android.u
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        KeyEmbedderResponder.this.lambda$synchronizePressingKey$1(keyPair, j11, keyEvent);
                                    }
                                });
                            }
                            boolArr[i10] = Boolean.valueOf(zArr[i10]);
                        }
                    } else {
                        boolArr[i10] = Boolean.valueOf(zArr[i10]);
                    }
                    i10++;
                } else {
                    boolArr[i10] = Boolean.FALSE;
                    if (!z10) {
                        arrayList.add(new Runnable() { // from class: io.flutter.embedding.android.t
                            @Override // java.lang.Runnable
                            public final void run() {
                                KeyEmbedderResponder.this.lambda$synchronizePressingKey$0(keyPair, j11, keyEvent);
                            }
                        });
                    }
                }
            } else if (!z11 && !containsKey) {
                z12 = false;
            }
            z11 = z12;
            i10++;
        }
        if (z10) {
            for (int i12 = 0; i12 < pressingGoal.keys.length; i12++) {
                if (boolArr[i12] == null) {
                    if (z11) {
                        boolArr[i12] = Boolean.valueOf(zArr[i12]);
                    } else {
                        boolArr[i12] = Boolean.TRUE;
                        z11 = true;
                    }
                }
            }
            if (!z11) {
                boolArr[0] = Boolean.TRUE;
            }
        } else {
            for (int i13 = 0; i13 < pressingGoal.keys.length; i13++) {
                if (boolArr[i13] == null) {
                    boolArr[i13] = Boolean.FALSE;
                }
            }
        }
        for (int i14 = 0; i14 < pressingGoal.keys.length; i14++) {
            if (zArr[i14] != boolArr[i14].booleanValue()) {
                KeyboardMap.KeyPair keyPair2 = pressingGoal.keys[i14];
                synthesizeEvent(boolArr[i14].booleanValue(), Long.valueOf(keyPair2.logicalKey), Long.valueOf(keyPair2.physicalKey), keyEvent.getEventTime());
            }
        }
    }

    void synchronizeTogglingKey(KeyboardMap.TogglingGoal togglingGoal, boolean z10, long j10, KeyEvent keyEvent) {
        if (togglingGoal.logicalKey != j10 && togglingGoal.enabled != z10) {
            boolean z11 = !this.pressingRecords.containsKey(Long.valueOf(togglingGoal.physicalKey));
            if (z11) {
                togglingGoal.enabled = !togglingGoal.enabled;
            }
            synthesizeEvent(z11, Long.valueOf(togglingGoal.logicalKey), Long.valueOf(togglingGoal.physicalKey), keyEvent.getEventTime());
            if (!z11) {
                togglingGoal.enabled = !togglingGoal.enabled;
            }
            synthesizeEvent(!z11, Long.valueOf(togglingGoal.logicalKey), Long.valueOf(togglingGoal.physicalKey), keyEvent.getEventTime());
        }
    }

    void updatePressingState(Long l10, Long l11) {
        if (l11 != null) {
            if (this.pressingRecords.put(l10, l11) != null) {
                throw new AssertionError("The key was not empty");
            }
        } else if (this.pressingRecords.remove(l10) != null) {
        } else {
            throw new AssertionError("The key was empty");
        }
    }
}
