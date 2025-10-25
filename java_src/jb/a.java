package jb;

import android.content.Context;
import com.arthenica.ffmpegkit.Chapter;
import com.posthog.surveys.PostHogDisplaySurvey;
import com.posthog.surveys.PostHogNextSurveyQuestion;
import com.posthog.surveys.PostHogSurveyResponse;
import com.posthog.surveys.PostHogSurveysConfig;
import com.posthog.surveys.PostHogSurveysDefaultDelegate;
import com.posthog.surveys.PostHogSurveysDelegate;
import com.posthog.surveys.RatingSurveyQuestion;
import com.posthog.surveys.SingleSurveyQuestion;
import com.posthog.surveys.Survey;
import com.posthog.surveys.SurveyConditions;
import com.posthog.surveys.SurveyEventCondition;
import com.posthog.surveys.SurveyEventConditions;
import com.posthog.surveys.SurveyFeatureFlagKeyValue;
import com.posthog.surveys.SurveyMatchType;
import com.posthog.surveys.SurveyQuestion;
import com.posthog.surveys.SurveyQuestionBranching;
import eb.h;
import gb.v;
import id.Function2;
import id.l;
import id.p;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import jb.a;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
import rd.b0;
import xc.k;
import xc.q;
import xc.t;
import yc.g0;
import yc.h0;
import yc.o;
import yc.w;
/* loaded from: classes.dex */
public final class a implements eb.g, mb.a {

    /* renamed from: s  reason: collision with root package name */
    private static final C0229a f24561s = new C0229a(null);

    /* renamed from: a  reason: collision with root package name */
    private final Map f24562a;

    /* renamed from: b  reason: collision with root package name */
    private final String f24563b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f24564c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f24565d;

    /* renamed from: e  reason: collision with root package name */
    private final Object f24566e;

    /* renamed from: f  reason: collision with root package name */
    private final Object f24567f;

    /* renamed from: g  reason: collision with root package name */
    private final Object f24568g;

    /* renamed from: h  reason: collision with root package name */
    private eb.h f24569h;

    /* renamed from: i  reason: collision with root package name */
    private eb.d f24570i;

    /* renamed from: j  reason: collision with root package name */
    private List f24571j;

    /* renamed from: k  reason: collision with root package name */
    private final String f24572k;

    /* renamed from: l  reason: collision with root package name */
    private Map f24573l;

    /* renamed from: m  reason: collision with root package name */
    private final Set f24574m;

    /* renamed from: n  reason: collision with root package name */
    private final Map f24575n;

    /* renamed from: o  reason: collision with root package name */
    private final Map f24576o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f24577p;

    /* renamed from: q  reason: collision with root package name */
    private Survey f24578q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f24579r;

    /* renamed from: jb.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static final class C0229a {
        private C0229a() {
        }

        public /* synthetic */ C0229a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends n implements l {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Survey f24581f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Survey survey) {
            super(1);
            this.f24581f = survey;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(a this$0) {
            m.e(this$0, "this$0");
            Thread.sleep(750L);
            this$0.X();
        }

        public final void b(PostHogDisplaySurvey postHogDisplaySurvey) {
            lb.i o10;
            m.e(postHogDisplaySurvey, "<anonymous parameter 0>");
            Survey survey = a.this.f24578q;
            if (survey == null || !m.a(this.f24581f.getId(), survey.getId())) {
                eb.d dVar = a.this.f24570i;
                if (dVar != null && (o10 = dVar.o()) != null) {
                    o10.a("[Surveys] Received a close event for a non-active survey");
                    return;
                }
                return;
            }
            if (!a.this.f24577p) {
                a.this.Q(this.f24581f);
            }
            a.this.W(this.f24581f);
            a.this.v();
            final a aVar = a.this;
            new Thread(new Runnable() { // from class: jb.b
                @Override // java.lang.Runnable
                public final void run() {
                    a.b.d(a.this);
                }
            }).start();
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            b((PostHogDisplaySurvey) obj);
            return t.f32733a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class c extends n implements p {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Survey f24583f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Survey survey) {
            super(3);
            this.f24583f = survey;
        }

        public final PostHogNextSurveyQuestion a(PostHogDisplaySurvey responseSurvey, int i10, PostHogSurveyResponse response) {
            lb.i o10;
            m.e(responseSurvey, "responseSurvey");
            m.e(response, "response");
            Survey survey = a.this.f24578q;
            if (survey == null || !m.a(responseSurvey.getId(), survey.getId())) {
                eb.d dVar = a.this.f24570i;
                if (dVar != null && (o10 = dVar.o()) != null) {
                    o10.a("Received a response event for a non-active survey");
                }
                return null;
            }
            PostHogNextSurveyQuestion B = a.this.B(this.f24583f, i10, response);
            a.this.f24576o.put(a.this.E(i10), response);
            a.this.f24577p = B.isSurveyCompleted();
            if (a.this.f24577p) {
                a aVar = a.this;
                aVar.T(this.f24583f, aVar.f24576o);
                return B;
            }
            return B;
        }

        @Override // id.p
        public /* bridge */ /* synthetic */ Object e(Object obj, Object obj2, Object obj3) {
            return a((PostHogDisplaySurvey) obj, ((Number) obj2).intValue(), (PostHogSurveyResponse) obj3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class d extends n implements l {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Survey f24584e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ a f24585f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(Survey survey, a aVar) {
            super(1);
            this.f24584e = survey;
            this.f24585f = aVar;
        }

        public final void a(PostHogDisplaySurvey shownSurvey) {
            lb.i o10;
            m.e(shownSurvey, "shownSurvey");
            if (!m.a(shownSurvey.getId(), this.f24584e.getId())) {
                eb.d dVar = this.f24585f.f24570i;
                if (dVar != null && (o10 = dVar.o()) != null) {
                    o10.a("Received a show event for a non-matching survey: " + shownSurvey.getId() + " vs " + this.f24584e.getId());
                    return;
                }
                return;
            }
            if (this.f24585f.f24578q == null) {
                this.f24585f.V(this.f24584e);
            }
            this.f24585f.U(this.f24584e);
            if (this.f24585f.M(this.f24584e)) {
                this.f24585f.f24574m.remove(this.f24584e.getId());
            }
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((PostHogDisplaySurvey) obj);
            return t.f32733a;
        }
    }

    /* loaded from: classes.dex */
    static final class e extends n implements Function2 {

        /* renamed from: e  reason: collision with root package name */
        public static final e f24586e = new e();

        e() {
            super(2);
        }

        @Override // id.Function2
        /* renamed from: a */
        public final Boolean invoke(List targets, String value) {
            boolean L;
            m.e(targets, "targets");
            m.e(value, "value");
            List list = targets;
            boolean z10 = false;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    L = b0.L(value, (String) it.next(), true);
                    if (L) {
                        z10 = true;
                        break;
                    }
                }
            }
            return Boolean.valueOf(z10);
        }
    }

    /* loaded from: classes.dex */
    static final class f extends n implements Function2 {

        /* renamed from: e  reason: collision with root package name */
        public static final f f24587e = new f();

        f() {
            super(2);
        }

        @Override // id.Function2
        /* renamed from: a */
        public final Boolean invoke(List targets, String value) {
            boolean L;
            m.e(targets, "targets");
            m.e(value, "value");
            List list = targets;
            boolean z10 = true;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    L = b0.L(value, (String) it.next(), true);
                    if (!(!L)) {
                        z10 = false;
                        break;
                    }
                }
            }
            return Boolean.valueOf(z10);
        }
    }

    /* loaded from: classes.dex */
    static final class g extends n implements Function2 {

        /* renamed from: e  reason: collision with root package name */
        public static final g f24588e = new g();

        g() {
            super(2);
        }

        @Override // id.Function2
        /* renamed from: a */
        public final Boolean invoke(List targets, String value) {
            m.e(targets, "targets");
            m.e(value, "value");
            List list = targets;
            boolean z10 = false;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else if (v.a(value, (String) it.next())) {
                        z10 = true;
                        break;
                    }
                }
            }
            return Boolean.valueOf(z10);
        }
    }

    /* loaded from: classes.dex */
    static final class h extends n implements Function2 {

        /* renamed from: e  reason: collision with root package name */
        public static final h f24589e = new h();

        h() {
            super(2);
        }

        @Override // id.Function2
        /* renamed from: a */
        public final Boolean invoke(List targets, String value) {
            m.e(targets, "targets");
            m.e(value, "value");
            List list = targets;
            boolean z10 = true;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else if (!(!v.a(value, (String) it.next()))) {
                        z10 = false;
                        break;
                    }
                }
            }
            return Boolean.valueOf(z10);
        }
    }

    /* loaded from: classes.dex */
    static final class i extends n implements Function2 {

        /* renamed from: e  reason: collision with root package name */
        public static final i f24590e = new i();

        i() {
            super(2);
        }

        @Override // id.Function2
        /* renamed from: a */
        public final Boolean invoke(List targets, String value) {
            m.e(targets, "targets");
            m.e(value, "value");
            List list = targets;
            boolean z10 = false;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else if (m.a(value, (String) it.next())) {
                        z10 = true;
                        break;
                    }
                }
            }
            return Boolean.valueOf(z10);
        }
    }

    /* loaded from: classes.dex */
    static final class j extends n implements Function2 {

        /* renamed from: e  reason: collision with root package name */
        public static final j f24591e = new j();

        j() {
            super(2);
        }

        @Override // id.Function2
        /* renamed from: a */
        public final Boolean invoke(List targets, String value) {
            m.e(targets, "targets");
            m.e(value, "value");
            List list = targets;
            boolean z10 = true;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else if (!(!m.a(value, (String) it.next()))) {
                        z10 = false;
                        break;
                    }
                }
            }
            return Boolean.valueOf(z10);
        }
    }

    public a(Context context) {
        Map h10;
        List h11;
        m.e(context, "context");
        h10 = h0.h(q.a(SurveyMatchType.I_CONTAINS, e.f24586e), q.a(SurveyMatchType.NOT_I_CONTAINS, f.f24587e), q.a(SurveyMatchType.REGEX, g.f24588e), q.a(SurveyMatchType.NOT_REGEX, h.f24589e), q.a(SurveyMatchType.EXACT, i.f24590e), q.a(SurveyMatchType.IS_NOT, j.f24591e));
        this.f24562a = h10;
        String a10 = gb.a.a(context);
        this.f24563b = a10 == null ? "Mobile" : a10;
        this.f24564c = new Object();
        this.f24565d = new Object();
        this.f24566e = new Object();
        this.f24567f = new Object();
        this.f24568g = new Object();
        h11 = o.h();
        this.f24571j = h11;
        this.f24572k = "seenSurvey_";
        this.f24574m = new LinkedHashSet();
        this.f24575n = new LinkedHashMap();
        this.f24576o = new LinkedHashMap();
    }

    private final Map A(Survey survey) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("$survey_name", survey.getName());
        linkedHashMap.put("$survey_id", survey.getId());
        Integer currentIteration = survey.getCurrentIteration();
        if (currentIteration != null) {
            linkedHashMap.put("$survey_iteration", Integer.valueOf(currentIteration.intValue()));
        }
        Date currentIterationStartDate = survey.getCurrentIterationStartDate();
        if (currentIterationStartDate != null) {
            linkedHashMap.put("$survey_iteration_start_date", currentIterationStartDate);
        }
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PostHogNextSurveyQuestion B(Survey survey, int i10, PostHogSurveyResponse postHogSurveyResponse) {
        Object R;
        SurveyQuestionBranching surveyQuestionBranching;
        PostHogNextSurveyQuestion postHogNextSurveyQuestion;
        R = w.R(survey.getQuestions(), i10);
        SurveyQuestion surveyQuestion = (SurveyQuestion) R;
        boolean z10 = true;
        int min = Math.min(i10 + 1, survey.getQuestions().size() - 1);
        if (surveyQuestion != null) {
            surveyQuestionBranching = surveyQuestion.getBranching();
        } else {
            surveyQuestionBranching = null;
        }
        if (surveyQuestionBranching == null) {
            if (i10 != survey.getQuestions().size() - 1) {
                z10 = false;
            }
            return new PostHogNextSurveyQuestion(min, z10);
        } else if (surveyQuestionBranching instanceof SurveyQuestionBranching.End) {
            return new PostHogNextSurveyQuestion(i10, true);
        } else {
            if (surveyQuestionBranching instanceof SurveyQuestionBranching.Next) {
                if (i10 != survey.getQuestions().size() - 1) {
                    z10 = false;
                }
                postHogNextSurveyQuestion = new PostHogNextSurveyQuestion(min, z10);
            } else if (surveyQuestionBranching instanceof SurveyQuestionBranching.SpecificQuestion) {
                int min2 = Math.min(((SurveyQuestionBranching.SpecificQuestion) surveyQuestionBranching).getIndex(), survey.getQuestions().size() - 1);
                if (min2 != survey.getQuestions().size() - 1) {
                    z10 = false;
                }
                postHogNextSurveyQuestion = new PostHogNextSurveyQuestion(min2, z10);
            } else if (surveyQuestionBranching instanceof SurveyQuestionBranching.ResponseBased) {
                PostHogNextSurveyQuestion D = D(survey, surveyQuestion, postHogSurveyResponse, ((SurveyQuestionBranching.ResponseBased) surveyQuestionBranching).getResponseValues());
                if (D == null) {
                    if (min != survey.getQuestions().size() - 1) {
                        z10 = false;
                    }
                    D = new PostHogNextSurveyQuestion(min, z10);
                }
                return D;
            } else {
                throw new xc.i();
            }
            return postHogNextSurveyQuestion;
        }
    }

    private final String C(int i10, int i11) {
        boolean z10 = true;
        if (i10 == 3) {
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 == 3) {
                        return "positive";
                    }
                    return null;
                }
                return "neutral";
            }
            return "negative";
        } else if (i10 == 5) {
            if (!(1 <= i11 && i11 < 3)) {
                if (i11 != 3) {
                    if (4 > i11 || i11 >= 6) {
                        z10 = false;
                    }
                    if (z10) {
                        return "positive";
                    }
                    return null;
                }
                return "neutral";
            }
            return "negative";
        } else {
            if (i10 == 7) {
                if (!(1 <= i11 && i11 < 4)) {
                    if (i11 != 4) {
                        if (5 > i11 || i11 >= 8) {
                            z10 = false;
                        }
                        if (z10) {
                            return "positive";
                        }
                    }
                    return "neutral";
                }
                return "negative";
            } else if (i10 == 10) {
                if (i11 >= 0 && i11 < 7) {
                    return "detractors";
                }
                if (7 <= i11 && i11 < 9) {
                    return "passives";
                }
                if (9 > i11 || i11 >= 11) {
                    z10 = false;
                }
                if (z10) {
                    return "promoters";
                }
            }
            return null;
        }
    }

    private final PostHogNextSurveyQuestion D(Survey survey, SurveyQuestion surveyQuestion, PostHogSurveyResponse postHogSurveyResponse, Map map) {
        lb.i o10;
        lb.i o11;
        if (surveyQuestion == null) {
            eb.d dVar = this.f24570i;
            if (dVar != null && (o11 = dVar.o()) != null) {
                o11.a("[Surveys] Got response based branching, but missing the actual question.");
            }
            return null;
        } else if (postHogSurveyResponse instanceof PostHogSurveyResponse.SingleChoice) {
            return L(surveyQuestion, (PostHogSurveyResponse.SingleChoice) postHogSurveyResponse, map, survey.getQuestions().size());
        } else {
            if (postHogSurveyResponse instanceof PostHogSurveyResponse.Rating) {
                return K(surveyQuestion, (PostHogSurveyResponse.Rating) postHogSurveyResponse, map, survey.getQuestions().size());
            }
            eb.d dVar2 = this.f24570i;
            if (dVar2 == null || (o10 = dVar2.o()) == null) {
                return null;
            }
            o10.a("[Surveys] Got response based branching for an unsupported question type.");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String E(int i10) {
        if (i10 == 0) {
            return "$survey_response";
        }
        return "$survey_response_" + i10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x002f, code lost:
        r0 = yc.h0.s(r1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.Map F() {
        /*
            r4 = this;
            java.util.Map r0 = r4.f24573l
            if (r0 != 0) goto L3c
            eb.h r0 = r4.f24569h
            r1 = 0
            if (r0 == 0) goto Le
            eb.d r0 = r0.getConfig()
            goto Lf
        Le:
            r0 = r1
        Lf:
            boolean r2 = r0 instanceof eb.d
            if (r2 == 0) goto L14
            goto L15
        L14:
            r0 = r1
        L15:
            if (r0 == 0) goto L25
            lb.m r0 = r0.d()
            if (r0 == 0) goto L25
            java.lang.String r2 = "surveySeen"
            r3 = 2
            java.lang.Object r0 = lb.m.b.a(r0, r2, r1, r3, r1)
            goto L26
        L25:
            r0 = r1
        L26:
            boolean r2 = r0 instanceof java.util.Map
            if (r2 == 0) goto L2d
            r1 = r0
            java.util.Map r1 = (java.util.Map) r1
        L2d:
            if (r1 == 0) goto L35
            java.util.Map r0 = yc.e0.s(r1)
            if (r0 != 0) goto L3a
        L35:
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r0.<init>()
        L3a:
            r4.f24573l = r0
        L3c:
            java.util.Map r0 = r4.f24573l
            if (r0 != 0) goto L44
            java.util.Map r0 = yc.e0.e()
        L44:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: jb.a.F():java.util.Map");
    }

    private final String G(Survey survey, String str) {
        Integer currentIteration = survey.getCurrentIteration();
        if (currentIteration != null && currentIteration.intValue() > 0) {
            return "$survey_" + str + '/' + survey.getId() + '/' + currentIteration;
        }
        return "$survey_" + str + '/' + survey.getId();
    }

    private final boolean H(Survey survey) {
        Map F;
        if (t(survey)) {
            return false;
        }
        String I = I(survey);
        synchronized (this.f24565d) {
            F = F();
        }
        Boolean bool = (Boolean) F.get(I);
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    private final String I(Survey survey) {
        String str = this.f24572k + survey.getId();
        Integer currentIteration = survey.getCurrentIteration();
        if (currentIteration != null && currentIteration.intValue() > 0) {
            return str + '_' + currentIteration;
        }
        return str;
    }

    private final PostHogSurveysDelegate J() {
        PostHogSurveysConfig J;
        PostHogSurveysDelegate surveysDelegate;
        eb.d dVar = this.f24570i;
        if (dVar == null || (J = dVar.J()) == null || (surveysDelegate = J.getSurveysDelegate()) == null) {
            return new PostHogSurveysDefaultDelegate(this.f24570i);
        }
        return surveysDelegate;
    }

    private final PostHogNextSurveyQuestion K(SurveyQuestion surveyQuestion, PostHogSurveyResponse.Rating rating, Map map, int i10) {
        lb.i o10;
        String C;
        Object obj;
        if (!(surveyQuestion instanceof RatingSurveyQuestion)) {
            return null;
        }
        Integer scale = ((RatingSurveyQuestion) surveyQuestion).getScale();
        Integer rating2 = rating.getRating();
        if (scale != null && rating2 != null && (C = C(scale.intValue(), rating2.intValue())) != null && (obj = map.get(C)) != null) {
            return O(obj, i10);
        }
        eb.d dVar = this.f24570i;
        if (dVar != null && (o10 = dVar.o()) != null) {
            o10.a("[Surveys] Could not get response bucket for rating question.");
        }
        return null;
    }

    private final PostHogNextSurveyQuestion L(SurveyQuestion surveyQuestion, PostHogSurveyResponse.SingleChoice singleChoice, Map map, int i10) {
        int i11;
        lb.i o10;
        Object obj;
        int i12;
        if (!(surveyQuestion instanceof SingleSurveyQuestion)) {
            return null;
        }
        String selectedChoice = singleChoice.getSelectedChoice();
        SingleSurveyQuestion singleSurveyQuestion = (SingleSurveyQuestion) surveyQuestion;
        List<String> choices = singleSurveyQuestion.getChoices();
        if (choices != null) {
            if (selectedChoice == null) {
                selectedChoice = "";
            }
            i11 = choices.indexOf(selectedChoice);
        } else {
            i11 = -1;
        }
        if (i11 == -1 && m.a(singleSurveyQuestion.getHasOpenChoice(), Boolean.TRUE)) {
            List<String> choices2 = singleSurveyQuestion.getChoices();
            if (choices2 != null) {
                i12 = choices2.size();
            } else {
                i12 = 0;
            }
            i11 = i12 - 1;
        }
        if (i11 >= 0 && (obj = map.get(String.valueOf(i11))) != null) {
            return O(obj, i10);
        }
        eb.d dVar = this.f24570i;
        if (dVar != null && (o10 = dVar.o()) != null) {
            o10.a("[Surveys] Could not find response index for specific question.");
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean M(Survey survey) {
        SurveyEventConditions events;
        List<SurveyEventCondition> values;
        SurveyConditions conditions = survey.getConditions();
        if (conditions == null || (events = conditions.getEvents()) == null || (values = events.getValues()) == null || !(!values.isEmpty())) {
            return false;
        }
        return true;
    }

    private final boolean N(Survey survey) {
        boolean contains;
        synchronized (this.f24566e) {
            contains = this.f24574m.contains(survey.getId());
        }
        return contains;
    }

    private final PostHogNextSurveyQuestion O(Object obj, int i10) {
        boolean z10 = true;
        if (obj instanceof Integer) {
            int min = Math.min(((Number) obj).intValue(), i10 - 1);
            if (min < i10) {
                z10 = false;
            }
            return new PostHogNextSurveyQuestion(min, z10);
        }
        if (obj instanceof String) {
            String lowerCase = ((String) obj).toLowerCase(Locale.ROOT);
            m.d(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            if (m.a(lowerCase, Chapter.KEY_END)) {
                return new PostHogNextSurveyQuestion(i10 - 1, true);
            }
        }
        return null;
    }

    private final void P(List list) {
        SurveyEventConditions events;
        List<SurveyEventCondition> values;
        boolean z10;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Survey survey = (Survey) it.next();
            SurveyConditions conditions = survey.getConditions();
            if (conditions != null && (events = conditions.getEvents()) != null && (values = events.getValues()) != null) {
                for (SurveyEventCondition surveyEventCondition : values) {
                    String name = surveyEventCondition.getName();
                    if (name.length() > 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (z10) {
                        Object obj = linkedHashMap.get(name);
                        if (obj == null) {
                            obj = new ArrayList();
                            linkedHashMap.put(name, obj);
                        }
                        ((List) obj).add(survey.getId());
                    }
                }
            }
        }
        synchronized (this.f24575n) {
            this.f24575n.clear();
            this.f24575n.putAll(linkedHashMap);
            t tVar = t.f32733a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Q(Survey survey) {
        int r10;
        Map c10;
        Map h10;
        k[] kVarArr = new k[2];
        List<SurveyQuestion> questions = survey.getQuestions();
        r10 = yc.p.r(questions, 10);
        ArrayList arrayList = new ArrayList(r10);
        for (SurveyQuestion surveyQuestion : questions) {
            arrayList.add(surveyQuestion.getQuestion());
        }
        kVarArr[0] = q.a("$survey_questions", arrayList);
        c10 = g0.c(q.a(G(survey, "dismissed"), Boolean.TRUE));
        kVarArr[1] = q.a("$set", c10);
        h10 = h0.h(kVarArr);
        R("survey dismissed", survey, h10);
    }

    private final void R(String str, Survey survey, Map map) {
        Map s10;
        eb.h hVar = this.f24569h;
        if (hVar != null) {
            s10 = h0.s(A(survey));
            s10.putAll(map);
            h.a.a(hVar, str, null, s10, null, null, null, 58, null);
        }
    }

    static /* synthetic */ void S(a aVar, String str, Survey survey, Map map, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            map = h0.e();
        }
        aVar.R(str, survey, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T(Survey survey, Map map) {
        int r10;
        Map i10;
        Map c10;
        Map o10;
        Map k10;
        k kVar;
        k[] kVarArr = new k[1];
        List<SurveyQuestion> questions = survey.getQuestions();
        r10 = yc.p.r(questions, 10);
        ArrayList arrayList = new ArrayList(r10);
        for (SurveyQuestion surveyQuestion : questions) {
            arrayList.add(surveyQuestion.getQuestion());
        }
        kVarArr[0] = q.a("$survey_questions", arrayList);
        i10 = h0.i(kVarArr);
        c10 = g0.c(q.a(G(survey, "responded"), Boolean.TRUE));
        i10.put("$set", c10);
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            Object responseValue = ((PostHogSurveyResponse) entry.getValue()).toResponseValue();
            if (responseValue != null) {
                kVar = q.a(str, responseValue);
            } else {
                kVar = null;
            }
            if (kVar != null) {
                arrayList2.add(kVar);
            }
        }
        o10 = h0.o(arrayList2);
        k10 = h0.k(i10, o10);
        R("survey sent", survey, k10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U(Survey survey) {
        S(this, "survey shown", survey, null, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void V(Survey survey) {
        synchronized (this.f24567f) {
            this.f24578q = survey;
            this.f24577p = false;
            this.f24576o.clear();
            t tVar = t.f32733a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void W(Survey survey) {
        Map s10;
        eb.d dVar;
        lb.m d10;
        String I = I(survey);
        synchronized (this.f24565d) {
            s10 = h0.s(F());
            s10.put(I, Boolean.TRUE);
            this.f24573l = s10;
            eb.h hVar = this.f24569h;
            eb.d dVar2 = null;
            if (hVar != null) {
                dVar = hVar.getConfig();
            } else {
                dVar = null;
            }
            if (dVar instanceof eb.d) {
                dVar2 = dVar;
            }
            if (dVar2 != null && (d10 = dVar2.d()) != null) {
                d10.b("surveySeen", s10);
                t tVar = t.f32733a;
            }
        }
    }

    private final boolean t(Survey survey) {
        boolean z10;
        SurveyEventConditions events;
        SurveyConditions conditions = survey.getConditions();
        if (conditions != null && (events = conditions.getEvents()) != null) {
            z10 = m.a(events.getRepeatedActivation(), Boolean.TRUE);
        } else {
            z10 = false;
        }
        if (!z10 || !M(survey)) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v() {
        synchronized (this.f24567f) {
            this.f24578q = null;
            this.f24577p = false;
            this.f24576o.clear();
            t tVar = t.f32733a;
        }
    }

    private final SurveyMatchType w(SurveyMatchType surveyMatchType) {
        if (surveyMatchType == null) {
            return SurveyMatchType.I_CONTAINS;
        }
        return surveyMatchType;
    }

    private final boolean x(Survey survey) {
        List<String> deviceTypes;
        SurveyMatchType surveyMatchType;
        SurveyConditions conditions = survey.getConditions();
        if (conditions == null || (deviceTypes = conditions.getDeviceTypes()) == null || deviceTypes.isEmpty()) {
            return true;
        }
        SurveyConditions conditions2 = survey.getConditions();
        if (conditions2 != null) {
            surveyMatchType = conditions2.getDeviceTypesMatchType();
        } else {
            surveyMatchType = null;
        }
        Function2 function2 = (Function2) this.f24562a.get(w(surveyMatchType));
        if (function2 == null) {
            return true;
        }
        return ((Boolean) function2.invoke(deviceTypes, this.f24563b)).booleanValue();
    }

    private final List y() {
        List list;
        List h10;
        eb.d dVar = this.f24570i;
        boolean z10 = false;
        if (dVar != null && dVar.I()) {
            z10 = true;
        }
        if (!z10) {
            h10 = o.h();
            return h10;
        }
        synchronized (this.f24564c) {
            list = this.f24571j;
        }
        return z(list);
    }

    private final List z(List list) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        String internalTargetingFlagKey;
        boolean z14;
        boolean z15;
        boolean z16;
        List h10;
        eb.h hVar = this.f24569h;
        if (hVar == null) {
            h10 = o.h();
            return h10;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            Survey survey = (Survey) obj;
            boolean z17 = false;
            if (survey.getStartDate() != null && survey.getEndDate() == null && x(survey) && !H(survey)) {
                ArrayList<String> arrayList2 = new ArrayList();
                String linkedFlagKey = survey.getLinkedFlagKey();
                if (linkedFlagKey != null) {
                    if (linkedFlagKey.length() > 0) {
                        z16 = true;
                    } else {
                        z16 = false;
                    }
                    if (!z16) {
                        linkedFlagKey = null;
                    }
                    if (linkedFlagKey != null) {
                        arrayList2.add(linkedFlagKey);
                    }
                }
                String targetingFlagKey = survey.getTargetingFlagKey();
                if (targetingFlagKey != null) {
                    if (targetingFlagKey.length() > 0) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    if (!z15) {
                        targetingFlagKey = null;
                    }
                    if (targetingFlagKey != null) {
                        arrayList2.add(targetingFlagKey);
                    }
                }
                if (!t(survey) && (internalTargetingFlagKey = survey.getInternalTargetingFlagKey()) != null) {
                    if (internalTargetingFlagKey.length() > 0) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    if (!z14) {
                        internalTargetingFlagKey = null;
                    }
                    if (internalTargetingFlagKey != null) {
                        arrayList2.add(internalTargetingFlagKey);
                    }
                }
                List<SurveyFeatureFlagKeyValue> featureFlagKeys = survey.getFeatureFlagKeys();
                if (featureFlagKeys != null) {
                    for (SurveyFeatureFlagKeyValue surveyFeatureFlagKeyValue : featureFlagKeys) {
                        String value = surveyFeatureFlagKeyValue.getValue();
                        if (surveyFeatureFlagKeyValue.getKey().length() > 0) {
                            z12 = true;
                        } else {
                            z12 = false;
                        }
                        if (z12) {
                            if (value != null && value.length() != 0) {
                                z13 = false;
                            } else {
                                z13 = true;
                            }
                            if (!z13) {
                                arrayList2.add(value);
                            }
                        }
                    }
                }
                if (!arrayList2.isEmpty()) {
                    for (String str : arrayList2) {
                        if (!h.a.d(hVar, str, false, 2, null)) {
                            z10 = false;
                            break;
                        }
                    }
                }
                z10 = true;
                if (M(survey)) {
                    z11 = N(survey);
                } else {
                    z11 = true;
                }
                if (z10 && z11) {
                    z17 = true;
                }
            }
            if (z17) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final void X() {
        Object Q;
        if (u()) {
            Q = w.Q(y());
            Survey survey = (Survey) Q;
            if (survey != null) {
                Y(survey);
            }
        }
    }

    public final void Y(Survey survey) {
        lb.i o10;
        m.e(survey, "survey");
        if (!u()) {
            eb.d dVar = this.f24570i;
            if (dVar != null && (o10 = dVar.o()) != null) {
                o10.a("Cannot show survey - another survey is already active");
                return;
            }
            return;
        }
        J().renderSurvey(PostHogDisplaySurvey.Companion.toDisplaySurvey(survey), new d(survey, this), new c(survey), new b(survey));
    }

    @Override // mb.a
    public void a(String event) {
        List<String> list;
        boolean z10;
        m.e(event, "event");
        synchronized (this.f24566e) {
            List list2 = (List) this.f24575n.get(event);
            if (list2 != null) {
                list = w.k0(list2);
            } else {
                list = null;
            }
        }
        if (list == null || list.isEmpty()) {
            return;
        }
        synchronized (this.f24566e) {
            for (String str : list) {
                this.f24574m.add(str);
            }
            t tVar = t.f32733a;
        }
        synchronized (this.f24568g) {
            z10 = this.f24579r;
        }
        if (z10) {
            X();
        }
    }

    @Override // eb.g
    public void b() {
        synchronized (this.f24568g) {
            this.f24579r = false;
            t tVar = t.f32733a;
        }
        v();
        this.f24569h = null;
        this.f24570i = null;
    }

    @Override // eb.g
    public void c(eb.h postHog) {
        m.e(postHog, "postHog");
        this.f24569h = postHog;
        eb.d config = postHog.getConfig();
        if (!(config instanceof eb.d)) {
            config = null;
        }
        this.f24570i = config;
        synchronized (this.f24568g) {
            this.f24579r = true;
            t tVar = t.f32733a;
        }
        X();
    }

    @Override // mb.a
    public void d(List surveys) {
        boolean z10;
        m.e(surveys, "surveys");
        synchronized (this.f24564c) {
            this.f24571j = surveys;
            t tVar = t.f32733a;
        }
        synchronized (this.f24566e) {
            P(surveys);
        }
        synchronized (this.f24568g) {
            z10 = this.f24579r;
        }
        if (z10) {
            X();
        }
    }

    public final boolean u() {
        boolean z10;
        synchronized (this.f24567f) {
            if (this.f24578q == null) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        return z10;
    }
}
