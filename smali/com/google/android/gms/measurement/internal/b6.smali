.class public final Lcom/google/android/gms/measurement/internal/b6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:J

.field final synthetic e:Lcom/google/android/gms/measurement/internal/d6;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/d6;Ljava/lang/String;J[B)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/b6;->e:Lcom/google/android/gms/measurement/internal/d6;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string p1, "health_monitor"

    .line 10
    .line 11
    invoke-static {p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    const-wide/16 p1, 0x0

    .line 15
    .line 16
    cmp-long p1, p3, p1

    .line 17
    .line 18
    if-lez p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    invoke-static {p1}, Ln5/q;->a(Z)V

    .line 24
    .line 25
    .line 26
    const-string p1, "health_monitor:start"

    .line 27
    .line 28
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/b6;->a:Ljava/lang/String;

    .line 29
    .line 30
    const-string p1, "health_monitor:count"

    .line 31
    .line 32
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/b6;->b:Ljava/lang/String;

    .line 33
    .line 34
    const-string p1, "health_monitor:value"

    .line 35
    .line 36
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/b6;->c:Ljava/lang/String;

    .line 37
    .line 38
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/b6;->d:J

    .line 39
    .line 40
    return-void
.end method

.method private final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b6;->e:Lcom/google/android/gms/measurement/internal/d6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d6;->p()Landroid/content/SharedPreferences;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/b6;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/b6;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    .line 33
    .line 34
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/b6;->a:Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private final d()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b6;->e:Lcom/google/android/gms/measurement/internal/d6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d6;->p()Landroid/content/SharedPreferences;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b6;->a:Ljava/lang/String;

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;J)V
    .locals 10

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/b6;->e:Lcom/google/android/gms/measurement/internal/d6;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/b6;->d()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long p3, v0, v2

    .line 13
    .line 14
    if-nez p3, :cond_0

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/b6;->c()V

    .line 17
    .line 18
    .line 19
    :cond_0
    if-nez p1, :cond_1

    .line 20
    .line 21
    const-string p1, ""

    .line 22
    .line 23
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/d6;->p()Landroid/content/SharedPreferences;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b6;->b:Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {p3, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    cmp-long p3, v4, v2

    .line 34
    .line 35
    const-wide/16 v1, 0x1

    .line 36
    .line 37
    if-gtz p3, :cond_2

    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/d6;->p()Landroid/content/SharedPreferences;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/b6;->c:Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50
    .line 51
    .line 52
    invoke-interface {p2, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 53
    .line 54
    .line 55
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    iget-object p3, p2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 60
    .line 61
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/yd;->q0()Ljava/security/SecureRandom;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-virtual {p3}, Ljava/util/Random;->nextLong()J

    .line 70
    .line 71
    .line 72
    move-result-wide v6

    .line 73
    const-wide v8, 0x7fffffffffffffffL

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    and-long/2addr v6, v8

    .line 79
    add-long/2addr v4, v1

    .line 80
    div-long/2addr v8, v4

    .line 81
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/d6;->p()Landroid/content/SharedPreferences;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    cmp-long p3, v6, v8

    .line 90
    .line 91
    if-gez p3, :cond_3

    .line 92
    .line 93
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/b6;->c:Ljava/lang/String;

    .line 94
    .line 95
    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    .line 97
    .line 98
    :cond_3
    invoke-interface {p2, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 99
    .line 100
    .line 101
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public final b()Landroid/util/Pair;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b6;->e:Lcom/google/android/gms/measurement/internal/d6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/b6;->d()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    const-wide/16 v3, 0x0

    .line 14
    .line 15
    cmp-long v5, v1, v3

    .line 16
    .line 17
    if-nez v5, :cond_0

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/b6;->c()V

    .line 20
    .line 21
    .line 22
    move-wide v1, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 25
    .line 26
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-interface {v5}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    sub-long/2addr v1, v5

    .line 35
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    :goto_0
    iget-wide v5, p0, Lcom/google/android/gms/measurement/internal/b6;->d:J

    .line 40
    .line 41
    cmp-long v7, v1, v5

    .line 42
    .line 43
    const/4 v8, 0x0

    .line 44
    if-gez v7, :cond_1

    .line 45
    .line 46
    return-object v8

    .line 47
    :cond_1
    add-long/2addr v5, v5

    .line 48
    cmp-long v1, v1, v5

    .line 49
    .line 50
    if-lez v1, :cond_2

    .line 51
    .line 52
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/b6;->c()V

    .line 53
    .line 54
    .line 55
    return-object v8

    .line 56
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b6;->c:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d6;->p()Landroid/content/SharedPreferences;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-interface {v2, v1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/b6;->b:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d6;->p()Landroid/content/SharedPreferences;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 73
    .line 74
    .line 75
    move-result-wide v5

    .line 76
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/b6;->c()V

    .line 77
    .line 78
    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    cmp-long v0, v5, v3

    .line 82
    .line 83
    if-gtz v0, :cond_3

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    new-instance v0, Landroid/util/Pair;

    .line 87
    .line 88
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    return-object v0

    .line 96
    :cond_4
    :goto_1
    sget-object v0, Lcom/google/android/gms/measurement/internal/d6;->A:Landroid/util/Pair;

    .line 97
    .line 98
    return-object v0
.end method
