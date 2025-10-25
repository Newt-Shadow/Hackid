package xe;

import java.util.logging.Level;
import java.util.logging.LogRecord;
/* loaded from: classes2.dex */
public abstract class g {
    /* JADX INFO: Access modifiers changed from: private */
    public static final int b(LogRecord logRecord) {
        if (logRecord.getLevel().intValue() > Level.INFO.intValue()) {
            return 5;
        }
        if (logRecord.getLevel().intValue() == Level.INFO.intValue()) {
            return 4;
        }
        return 3;
    }
}
