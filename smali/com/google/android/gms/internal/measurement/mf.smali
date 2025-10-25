.class public final Lcom/google/android/gms/internal/measurement/mf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/lf;


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/p9;

.field public static final b:Lcom/google/android/gms/internal/measurement/p9;

.field public static final c:Lcom/google/android/gms/internal/measurement/p9;

.field public static final d:Lcom/google/android/gms/internal/measurement/p9;

.field public static final e:Lcom/google/android/gms/internal/measurement/p9;

.field public static final f:Lcom/google/android/gms/internal/measurement/p9;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/j9;

    .line 2
    .line 3
    const-string v1, "com.google.android.gms.measurement"

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/e9;->a(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/j9;-><init>(Landroid/net/Uri;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/j9;->a()Lcom/google/android/gms/internal/measurement/j9;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/j9;->b()Lcom/google/android/gms/internal/measurement/j9;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "measurement.test.boolean_flag"

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/j9;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/p9;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sput-object v1, Lcom/google/android/gms/internal/measurement/mf;->a:Lcom/google/android/gms/internal/measurement/p9;

    .line 28
    .line 29
    const-string v1, "measurement.test.cached_long_flag"

    .line 30
    .line 31
    const-wide/16 v2, -0x1

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/j9;->c(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/p9;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sput-object v1, Lcom/google/android/gms/internal/measurement/mf;->b:Lcom/google/android/gms/internal/measurement/p9;

    .line 38
    .line 39
    const-string v1, "measurement.test.double_flag"

    .line 40
    .line 41
    const-wide/high16 v4, -0x3ff8000000000000L    # -3.0

    .line 42
    .line 43
    invoke-virtual {v0, v1, v4, v5}, Lcom/google/android/gms/internal/measurement/j9;->e(Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/p9;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    sput-object v1, Lcom/google/android/gms/internal/measurement/mf;->c:Lcom/google/android/gms/internal/measurement/p9;

    .line 48
    .line 49
    const-string v1, "measurement.test.int_flag"

    .line 50
    .line 51
    const-wide/16 v4, -0x2

    .line 52
    .line 53
    invoke-virtual {v0, v1, v4, v5}, Lcom/google/android/gms/internal/measurement/j9;->c(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/p9;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    sput-object v1, Lcom/google/android/gms/internal/measurement/mf;->d:Lcom/google/android/gms/internal/measurement/p9;

    .line 58
    .line 59
    const-string v1, "measurement.test.long_flag"

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/j9;->c(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/p9;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    sput-object v1, Lcom/google/android/gms/internal/measurement/mf;->e:Lcom/google/android/gms/internal/measurement/p9;

    .line 66
    .line 67
    const-string v1, "measurement.test.string_flag"

    .line 68
    .line 69
    const-string v2, "---"

    .line 70
    .line 71
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/j9;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/p9;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lcom/google/android/gms/internal/measurement/mf;->f:Lcom/google/android/gms/internal/measurement/p9;

    .line 76
    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/mf;->b:Lcom/google/android/gms/internal/measurement/p9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p9;->d()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public final f()D
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/mf;->c:Lcom/google/android/gms/internal/measurement/p9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p9;->d()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Double;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public final g()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/mf;->d:Lcom/google/android/gms/internal/measurement/p9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p9;->d()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public final h()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/mf;->e:Lcom/google/android/gms/internal/measurement/p9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p9;->d()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/mf;->f:Lcom/google/android/gms/internal/measurement/p9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p9;->d()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method public final zza()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/mf;->a:Lcom/google/android/gms/internal/measurement/p9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p9;->d()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method
