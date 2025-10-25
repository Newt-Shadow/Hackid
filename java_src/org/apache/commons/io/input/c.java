package org.apache.commons.io.input;

import java.io.IOException;
/* loaded from: classes2.dex */
abstract class c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(boolean z10) {
        if (z10) {
            return;
        }
        throw new IOException("Closed");
    }
}
