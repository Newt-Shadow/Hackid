.class Lio/sentry/android/core/b0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/android/core/internal/util/t$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/core/b0;->j()Lio/sentry/android/core/b0$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:F

.field final synthetic b:Lio/sentry/android/core/b0;


# direct methods
.method constructor <init>(Lio/sentry/android/core/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/android/core/b0$a;->b:Lio/sentry/android/core/b0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lio/sentry/android/core/b0$a;->a:F

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public d(JJJJZZF)V
    .locals 0

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    sub-long/2addr p3, p1

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    add-long/2addr p3, p1

    .line 11
    iget-object p1, p0, Lio/sentry/android/core/b0$a;->b:Lio/sentry/android/core/b0;

    .line 12
    .line 13
    invoke-static {p1}, Lio/sentry/android/core/b0;->b(Lio/sentry/android/core/b0;)J

    .line 14
    .line 15
    .line 16
    move-result-wide p1

    .line 17
    sub-long/2addr p3, p1

    .line 18
    const-wide/16 p1, 0x0

    .line 19
    .line 20
    cmp-long p1, p3, p1

    .line 21
    .line 22
    if-gez p1, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    if-eqz p10, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lio/sentry/android/core/b0$a;->b:Lio/sentry/android/core/b0;

    .line 28
    .line 29
    invoke-static {p1}, Lio/sentry/android/core/b0;->c(Lio/sentry/android/core/b0;)Ljava/util/ArrayDeque;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance p2, Lio/sentry/profilemeasurements/b;

    .line 34
    .line 35
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object p7

    .line 39
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object p5

    .line 43
    invoke-direct {p2, p7, p5}, Lio/sentry/profilemeasurements/b;-><init>(Ljava/lang/Long;Ljava/lang/Number;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    if-eqz p9, :cond_2

    .line 51
    .line 52
    iget-object p1, p0, Lio/sentry/android/core/b0$a;->b:Lio/sentry/android/core/b0;

    .line 53
    .line 54
    invoke-static {p1}, Lio/sentry/android/core/b0;->d(Lio/sentry/android/core/b0;)Ljava/util/ArrayDeque;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance p2, Lio/sentry/profilemeasurements/b;

    .line 59
    .line 60
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object p7

    .line 64
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object p5

    .line 68
    invoke-direct {p2, p7, p5}, Lio/sentry/profilemeasurements/b;-><init>(Ljava/lang/Long;Ljava/lang/Number;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_0
    iget p1, p0, Lio/sentry/android/core/b0$a;->a:F

    .line 75
    .line 76
    cmpl-float p1, p11, p1

    .line 77
    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    iput p11, p0, Lio/sentry/android/core/b0$a;->a:F

    .line 81
    .line 82
    iget-object p1, p0, Lio/sentry/android/core/b0$a;->b:Lio/sentry/android/core/b0;

    .line 83
    .line 84
    invoke-static {p1}, Lio/sentry/android/core/b0;->e(Lio/sentry/android/core/b0;)Ljava/util/ArrayDeque;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-instance p2, Lio/sentry/profilemeasurements/b;

    .line 89
    .line 90
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    invoke-static {p11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 95
    .line 96
    .line 97
    move-result-object p4

    .line 98
    invoke-direct {p2, p3, p4}, Lio/sentry/profilemeasurements/b;-><init>(Ljava/lang/Long;Ljava/lang/Number;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    return-void
.end method
