.class final Lio/sentry/flutter/BeforeSendCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/s5$d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final setEventEnvironmentTag(Lio/sentry/z4;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "event.origin"

    .line 2
    .line 3
    invoke-virtual {p1, v0, p2}, Lio/sentry/t3;->d0(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "event.environment"

    .line 7
    .line 8
    invoke-virtual {p1, p2, p3}, Lio/sentry/t3;->d0(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method static synthetic setEventEnvironmentTag$default(Lio/sentry/flutter/BeforeSendCallbackImpl;Lio/sentry/z4;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const-string p2, "android"

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/flutter/BeforeSendCallbackImpl;->setEventEnvironmentTag(Lio/sentry/z4;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public execute(Lio/sentry/z4;Lio/sentry/c0;)Lio/sentry/z4;
    .locals 6

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "hint"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lio/sentry/t3;->L()Lio/sentry/protocol/p;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_6

    .line 16
    .line 17
    invoke-virtual {p2}, Lio/sentry/protocol/p;->f()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const v1, -0x4054a580

    .line 26
    .line 27
    .line 28
    if-eq v0, v1, :cond_4

    .line 29
    .line 30
    const v1, 0xcd086b5

    .line 31
    .line 32
    .line 33
    if-eq v0, v1, :cond_2

    .line 34
    .line 35
    const v1, 0x522a1e5c

    .line 36
    .line 37
    .line 38
    if-eq v0, v1, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string v0, "sentry.dart.flutter"

    .line 42
    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-nez p2, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-string p2, "flutter"

    .line 51
    .line 52
    const-string v0, "dart"

    .line 53
    .line 54
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/flutter/BeforeSendCallbackImpl;->setEventEnvironmentTag(Lio/sentry/z4;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const-string v0, "sentry.native.android.flutter"

    .line 59
    .line 60
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-nez p2, :cond_3

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const/4 v2, 0x0

    .line 68
    const-string v3, "native"

    .line 69
    .line 70
    const/4 v4, 0x2

    .line 71
    const/4 v5, 0x0

    .line 72
    move-object v0, p0

    .line 73
    move-object v1, p1

    .line 74
    invoke-static/range {v0 .. v5}, Lio/sentry/flutter/BeforeSendCallbackImpl;->setEventEnvironmentTag$default(Lio/sentry/flutter/BeforeSendCallbackImpl;Lio/sentry/z4;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    const-string v0, "sentry.java.android.flutter"

    .line 79
    .line 80
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-nez p2, :cond_5

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    const/4 v2, 0x0

    .line 88
    const-string v3, "java"

    .line 89
    .line 90
    const/4 v4, 0x2

    .line 91
    const/4 v5, 0x0

    .line 92
    move-object v0, p0

    .line 93
    move-object v1, p1

    .line 94
    invoke-static/range {v0 .. v5}, Lio/sentry/flutter/BeforeSendCallbackImpl;->setEventEnvironmentTag$default(Lio/sentry/flutter/BeforeSendCallbackImpl;Lio/sentry/z4;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_6
    :goto_0
    return-object p1
.end method
