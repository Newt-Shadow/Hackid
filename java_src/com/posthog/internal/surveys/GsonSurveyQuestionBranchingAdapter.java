package com.posthog.internal.surveys;

import com.arthenica.ffmpegkit.Chapter;
import com.arthenica.ffmpegkit.StreamInformation;
import com.google.gson.g;
import com.google.gson.h;
import com.google.gson.i;
import com.google.gson.l;
import com.google.gson.o;
import com.google.gson.p;
import com.posthog.surveys.SurveyQuestionBranching;
import eb.d;
import java.lang.reflect.Type;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.m;
import xc.k;
import xc.q;
import yc.g0;
import yc.h0;
/* loaded from: classes.dex */
public final class GsonSurveyQuestionBranchingAdapter implements p, h {

    /* renamed from: a  reason: collision with root package name */
    private final d f9487a;

    public GsonSurveyQuestionBranchingAdapter(d config) {
        m.e(config, "config");
        this.f9487a = config;
    }

    @Override // com.google.gson.h
    /* renamed from: a */
    public SurveyQuestionBranching deserialize(i json, Type typeOfT, g context) {
        String str;
        int i10;
        l lVar;
        Map e10;
        Set<Map.Entry> y10;
        int r10;
        int b10;
        int b11;
        Object iVar;
        m.e(json, "json");
        m.e(typeOfT, "typeOfT");
        m.e(context, "context");
        try {
            l l10 = json.l();
            i A = l10.A("type");
            if (A != null) {
                str = A.n();
            } else {
                str = null;
            }
            if (str != null) {
                switch (str.hashCode()) {
                    case -1044020302:
                        if (!str.equals("next_question")) {
                            break;
                        } else {
                            return SurveyQuestionBranching.Next.INSTANCE;
                        }
                    case -417940397:
                        if (str.equals("specific_question")) {
                            i A2 = l10.A(StreamInformation.KEY_INDEX);
                            if (A2 != null) {
                                i10 = A2.g();
                            } else {
                                i10 = 0;
                            }
                            return new SurveyQuestionBranching.SpecificQuestion(i10);
                        }
                        break;
                    case 100571:
                        if (!str.equals(Chapter.KEY_END)) {
                            break;
                        } else {
                            return SurveyQuestionBranching.End.INSTANCE;
                        }
                    case 423384629:
                        if (str.equals("response_based")) {
                            i A3 = l10.A("responseValues");
                            if (A3 != null) {
                                lVar = A3.l();
                            } else {
                                lVar = null;
                            }
                            if (lVar == null || (y10 = lVar.y()) == null) {
                                e10 = h0.e();
                            } else {
                                r10 = yc.p.r(y10, 10);
                                b10 = g0.b(r10);
                                b11 = od.i.b(b10, 16);
                                e10 = new LinkedHashMap(b11);
                                for (Map.Entry entry : y10) {
                                    Object key = entry.getKey();
                                    if (((i) entry.getValue()).s() && ((i) entry.getValue()).m().G()) {
                                        iVar = Integer.valueOf(((i) entry.getValue()).g());
                                    } else if (((i) entry.getValue()).s() && ((i) entry.getValue()).m().I()) {
                                        iVar = ((i) entry.getValue()).n();
                                    } else {
                                        iVar = ((i) entry.getValue()).toString();
                                    }
                                    k a10 = q.a(key, iVar);
                                    e10.put(a10.c(), a10.d());
                                }
                            }
                            return new SurveyQuestionBranching.ResponseBased(e10);
                        }
                        break;
                        break;
                }
            }
            this.f9487a.o().a("Unknown branching type: " + str);
            return null;
        } catch (Throwable th) {
            this.f9487a.o().a(json + " isn't a valid SurveyQuestionBranching: " + th + '.');
            return null;
        }
    }

    @Override // com.google.gson.p
    /* renamed from: b */
    public i serialize(SurveyQuestionBranching src, Type typeOfSrc, o context) {
        m.e(src, "src");
        m.e(typeOfSrc, "typeOfSrc");
        m.e(context, "context");
        i b10 = context.b(src, typeOfSrc);
        m.d(b10, "context.serialize(src, typeOfSrc)");
        return b10;
    }
}
