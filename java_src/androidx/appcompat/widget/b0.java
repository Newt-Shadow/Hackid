package androidx.appcompat.widget;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
/* loaded from: classes.dex */
final class b0 {

    /* renamed from: a  reason: collision with root package name */
    private TextView f1389a;

    /* renamed from: b  reason: collision with root package name */
    private TextClassifier f1390b;

    /* loaded from: classes.dex */
    private static final class a {
        static TextClassifier a(TextView textView) {
            TextClassificationManager textClassificationManager = (TextClassificationManager) textView.getContext().getSystemService(TextClassificationManager.class);
            if (textClassificationManager != null) {
                return textClassificationManager.getTextClassifier();
            }
            return TextClassifier.NO_OP;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b0(TextView textView) {
        this.f1389a = (TextView) c0.f.g(textView);
    }

    public TextClassifier a() {
        TextClassifier textClassifier = this.f1390b;
        if (textClassifier == null) {
            return a.a(this.f1389a);
        }
        return textClassifier;
    }

    public void b(TextClassifier textClassifier) {
        this.f1390b = textClassifier;
    }
}
