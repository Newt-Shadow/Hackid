.class public final Lcom/posthog/internal/surveys/GsonSurveyRatingDisplayTypeAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/p;
.implements Lcom/google/gson/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/p;",
        "Lcom/google/gson/h;"
    }
.end annotation


# instance fields
.field private final a:Leb/d;


# direct methods
.method public constructor <init>(Leb/d;)V
    .locals 1

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/posthog/internal/surveys/GsonSurveyRatingDisplayTypeAdapter;->a:Leb/d;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/i;Ljava/lang/reflect/Type;Lcom/google/gson/g;)Lcom/posthog/surveys/SurveyRatingDisplayType;
    .locals 1

    .line 1
    const-string v0, "json"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "typeOfT"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p2, "context"

    .line 12
    .line 13
    invoke-static {p3, p2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    sget-object p2, Lcom/posthog/surveys/SurveyRatingDisplayType;->Companion:Lcom/posthog/surveys/SurveyRatingDisplayType$Companion;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/gson/i;->n()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    const-string v0, "json.asString"

    .line 23
    .line 24
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p3}, Lcom/posthog/surveys/SurveyRatingDisplayType$Companion;->fromValue(Ljava/lang/String;)Lcom/posthog/surveys/SurveyRatingDisplayType;

    .line 28
    .line 29
    .line 30
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    return-object p1

    .line 32
    :catchall_0
    move-exception p2

    .line 33
    iget-object p3, p0, Lcom/posthog/internal/surveys/GsonSurveyRatingDisplayTypeAdapter;->a:Leb/d;

    .line 34
    .line 35
    invoke-virtual {p3}, Leb/d;->o()Llb/i;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/google/gson/i;->n()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p1, " isn\'t a known type: "

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const/16 p1, 0x2e

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-interface {p3, p1}, Llb/i;->a(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    return-object p1
.end method

.method public b(Lcom/posthog/surveys/SurveyRatingDisplayType;Ljava/lang/reflect/Type;Lcom/google/gson/o;)Lcom/google/gson/i;
    .locals 1

    .line 1
    const-string v0, "src"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "typeOfSrc"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p2, "context"

    .line 12
    .line 13
    invoke-static {p3, p2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyRatingDisplayType;->getValue()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p3, p1}, Lcom/google/gson/o;->c(Ljava/lang/Object;)Lcom/google/gson/i;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, "context.serialize(src.value)"

    .line 25
    .line 26
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object p1
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/i;Ljava/lang/reflect/Type;Lcom/google/gson/g;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/posthog/internal/surveys/GsonSurveyRatingDisplayTypeAdapter;->a(Lcom/google/gson/i;Ljava/lang/reflect/Type;Lcom/google/gson/g;)Lcom/posthog/surveys/SurveyRatingDisplayType;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/o;)Lcom/google/gson/i;
    .locals 0

    .line 1
    check-cast p1, Lcom/posthog/surveys/SurveyRatingDisplayType;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/posthog/internal/surveys/GsonSurveyRatingDisplayTypeAdapter;->b(Lcom/posthog/surveys/SurveyRatingDisplayType;Ljava/lang/reflect/Type;Lcom/google/gson/o;)Lcom/google/gson/i;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
