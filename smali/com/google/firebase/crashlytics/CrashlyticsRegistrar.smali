.class public Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# instance fields
.field private final a:Lk7/e0;

.field private final b:Lk7/e0;

.field private final c:Lk7/e0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lv8/c$a;->a:Lv8/c$a;

    .line 2
    .line 3
    invoke-static {v0}, Lv8/b;->a(Lv8/c$a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lj7/a;

    .line 5
    .line 6
    const-class v1, Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lk7/e0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk7/e0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->a:Lk7/e0;

    .line 13
    .line 14
    const-class v0, Lj7/b;

    .line 15
    .line 16
    invoke-static {v0, v1}, Lk7/e0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk7/e0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->b:Lk7/e0;

    .line 21
    .line 22
    const-class v0, Lj7/c;

    .line 23
    .line 24
    invoke-static {v0, v1}, Lk7/e0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk7/e0;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->c:Lk7/e0;

    .line 29
    .line 30
    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;Lk7/d;)Lcom/google/firebase/crashlytics/a;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->b(Lk7/d;)Lcom/google/firebase/crashlytics/a;

    move-result-object p0

    return-object p0
.end method

.method private b(Lk7/d;)Lcom/google/firebase/crashlytics/a;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lr7/i;->f(Z)V

    .line 3
    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-class v2, Lh7/f;

    .line 10
    .line 11
    invoke-interface {p1, v2}, Lk7/d;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    move-object v3, v2

    .line 16
    check-cast v3, Lh7/f;

    .line 17
    .line 18
    const-class v2, Ll8/e;

    .line 19
    .line 20
    invoke-interface {p1, v2}, Lk7/d;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    move-object v4, v2

    .line 25
    check-cast v4, Ll8/e;

    .line 26
    .line 27
    const-class v2, Ln7/a;

    .line 28
    .line 29
    invoke-interface {p1, v2}, Lk7/d;->h(Ljava/lang/Class;)Lk8/a;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const-class v2, Li7/a;

    .line 34
    .line 35
    invoke-interface {p1, v2}, Lk7/d;->h(Ljava/lang/Class;)Lk8/a;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    const-class v2, Lt8/a;

    .line 40
    .line 41
    invoke-interface {p1, v2}, Lk7/d;->h(Ljava/lang/Class;)Lk8/a;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    iget-object v2, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->a:Lk7/e0;

    .line 46
    .line 47
    invoke-interface {p1, v2}, Lk7/d;->b(Lk7/e0;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    move-object v8, v2

    .line 52
    check-cast v8, Ljava/util/concurrent/ExecutorService;

    .line 53
    .line 54
    iget-object v2, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->b:Lk7/e0;

    .line 55
    .line 56
    invoke-interface {p1, v2}, Lk7/d;->b(Lk7/e0;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    move-object v9, v2

    .line 61
    check-cast v9, Ljava/util/concurrent/ExecutorService;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->c:Lk7/e0;

    .line 64
    .line 65
    invoke-interface {p1, v2}, Lk7/d;->b(Lk7/e0;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    move-object v10, p1

    .line 70
    check-cast v10, Ljava/util/concurrent/ExecutorService;

    .line 71
    .line 72
    invoke-static/range {v3 .. v10}, Lcom/google/firebase/crashlytics/a;->f(Lh7/f;Ll8/e;Lk8/a;Lk8/a;Lk8/a;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)Lcom/google/firebase/crashlytics/a;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 77
    .line 78
    .line 79
    move-result-wide v2

    .line 80
    sub-long/2addr v2, v0

    .line 81
    const-wide/16 v0, 0x10

    .line 82
    .line 83
    cmp-long v0, v2, v0

    .line 84
    .line 85
    if-lez v0, :cond_0

    .line 86
    .line 87
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v4, "Initializing Crashlytics blocked main for "

    .line 97
    .line 98
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v2, " ms"

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Ln7/g;->b(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_0
    return-object p1
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 3

    .line 1
    const-class v0, Lcom/google/firebase/crashlytics/a;

    .line 2
    .line 3
    invoke-static {v0}, Lk7/c;->c(Ljava/lang/Class;)Lk7/c$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "fire-cls"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lk7/c$b;->h(Ljava/lang/String;)Lk7/c$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-class v2, Lh7/f;

    .line 14
    .line 15
    invoke-static {v2}, Lk7/q;->k(Ljava/lang/Class;)Lk7/q;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v2}, Lk7/c$b;->b(Lk7/q;)Lk7/c$b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-class v2, Ll8/e;

    .line 24
    .line 25
    invoke-static {v2}, Lk7/q;->k(Ljava/lang/Class;)Lk7/q;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v2}, Lk7/c$b;->b(Lk7/q;)Lk7/c$b;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v2, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->a:Lk7/e0;

    .line 34
    .line 35
    invoke-static {v2}, Lk7/q;->l(Lk7/e0;)Lk7/q;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Lk7/c$b;->b(Lk7/q;)Lk7/c$b;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v2, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->b:Lk7/e0;

    .line 44
    .line 45
    invoke-static {v2}, Lk7/q;->l(Lk7/e0;)Lk7/q;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Lk7/c$b;->b(Lk7/q;)Lk7/c$b;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v2, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->c:Lk7/e0;

    .line 54
    .line 55
    invoke-static {v2}, Lk7/q;->l(Lk7/e0;)Lk7/q;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v2}, Lk7/c$b;->b(Lk7/q;)Lk7/c$b;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-class v2, Ln7/a;

    .line 64
    .line 65
    invoke-static {v2}, Lk7/q;->a(Ljava/lang/Class;)Lk7/q;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v0, v2}, Lk7/c$b;->b(Lk7/q;)Lk7/c$b;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-class v2, Li7/a;

    .line 74
    .line 75
    invoke-static {v2}, Lk7/q;->a(Ljava/lang/Class;)Lk7/q;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v0, v2}, Lk7/c$b;->b(Lk7/q;)Lk7/c$b;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-class v2, Lt8/a;

    .line 84
    .line 85
    invoke-static {v2}, Lk7/q;->a(Ljava/lang/Class;)Lk7/q;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v0, v2}, Lk7/c$b;->b(Lk7/q;)Lk7/c$b;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    new-instance v2, Lm7/f;

    .line 94
    .line 95
    invoke-direct {v2, p0}, Lm7/f;-><init>(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v2}, Lk7/c$b;->f(Lk7/g;)Lk7/c$b;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lk7/c$b;->e()Lk7/c$b;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lk7/c$b;->d()Lk7/c;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const-string v2, "20.0.0"

    .line 111
    .line 112
    invoke-static {v1, v2}, Ls8/h;->b(Ljava/lang/String;Ljava/lang/String;)Lk7/c;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    filled-new-array {v0, v1}, [Lk7/c;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    return-object v0
.end method
