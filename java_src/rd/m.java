package rd;

import java.util.regex.MatchResult;
import java.util.regex.Matcher;
/* loaded from: classes2.dex */
public abstract class m {
    /* JADX INFO: Access modifiers changed from: private */
    public static final i d(Matcher matcher, int i10, CharSequence charSequence) {
        if (!matcher.find(i10)) {
            return null;
        }
        return new k(matcher, charSequence);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final od.c e(MatchResult matchResult) {
        od.c k10;
        k10 = od.i.k(matchResult.start(), matchResult.end());
        return k10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final od.c f(MatchResult matchResult, int i10) {
        od.c k10;
        k10 = od.i.k(matchResult.start(i10), matchResult.end(i10));
        return k10;
    }
}
