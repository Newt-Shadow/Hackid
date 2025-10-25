package org.apache.tika.sax.xpath;
/* loaded from: classes2.dex */
public class CompositeMatcher extends Matcher {

    /* renamed from: a  reason: collision with root package name */
    private final Matcher f27677a;

    /* renamed from: b  reason: collision with root package name */
    private final Matcher f27678b;

    public CompositeMatcher(Matcher matcher, Matcher matcher2) {
        this.f27677a = matcher;
        this.f27678b = matcher2;
    }

    @Override // org.apache.tika.sax.xpath.Matcher
    public Matcher descend(String str, String str2) {
        Matcher descend = this.f27677a.descend(str, str2);
        Matcher descend2 = this.f27678b.descend(str, str2);
        Matcher matcher = Matcher.FAIL;
        if (descend == matcher) {
            return descend2;
        }
        if (descend2 == matcher) {
            return descend;
        }
        if (this.f27677a == descend && this.f27678b == descend2) {
            return this;
        }
        return new CompositeMatcher(descend, descend2);
    }

    @Override // org.apache.tika.sax.xpath.Matcher
    public boolean matchesAttribute(String str, String str2) {
        if (!this.f27677a.matchesAttribute(str, str2) && !this.f27678b.matchesAttribute(str, str2)) {
            return false;
        }
        return true;
    }

    @Override // org.apache.tika.sax.xpath.Matcher
    public boolean matchesElement() {
        if (!this.f27677a.matchesElement() && !this.f27678b.matchesElement()) {
            return false;
        }
        return true;
    }

    @Override // org.apache.tika.sax.xpath.Matcher
    public boolean matchesText() {
        if (!this.f27677a.matchesText() && !this.f27678b.matchesText()) {
            return false;
        }
        return true;
    }
}
