.class public final Ln7/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ln7/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln7/j;

    invoke-direct {v0}, Ln7/j;-><init>()V

    sput-object v0, Ln7/j;->a:Ln7/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Ln7/j;Ljava/lang/String;IIZILjava/lang/Object;)Lt7/f0$e$d$a$c;
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    move p2, v0

    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x4

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    move p3, v0

    .line 12
    :cond_1
    and-int/lit8 p5, p5, 0x8

    .line 13
    .line 14
    if-eqz p5, :cond_2

    .line 15
    .line 16
    move p4, v0

    .line 17
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Ln7/j;->b(Ljava/lang/String;IIZ)Lt7/f0$e$d$a$c;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method private final f()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ln7/i;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 v1, 0x1c

    .line 16
    .line 17
    const-string v2, ""

    .line 18
    .line 19
    if-lt v0, v1, :cond_1

    .line 20
    .line 21
    invoke-static {}, Lcom/google/android/gms/common/util/l;->a()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    :cond_1
    move-object v0, v2

    .line 28
    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;II)Lt7/f0$e$d$a$c;
    .locals 8

    .line 1
    const-string v0, "processName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v7}, Ln7/j;->c(Ln7/j;Ljava/lang/String;IIZILjava/lang/Object;)Lt7/f0$e$d$a$c;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;IIZ)Lt7/f0$e$d$a$c;
    .locals 1

    .line 1
    const-string v0, "processName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lt7/f0$e$d$a$c;->a()Lt7/f0$e$d$a$c$a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lt7/f0$e$d$a$c$a;->e(Ljava/lang/String;)Lt7/f0$e$d$a$c$a;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, p2}, Lt7/f0$e$d$a$c$a;->d(I)Lt7/f0$e$d$a$c$a;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, p3}, Lt7/f0$e$d$a$c$a;->c(I)Lt7/f0$e$d$a$c$a;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p4}, Lt7/f0$e$d$a$c$a;->b(Z)Lt7/f0$e$d$a$c$a;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lt7/f0$e$d$a$c$a;->a()Lt7/f0$e$d$a$c;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p2, "build(...)"

    .line 31
    .line 32
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object p1
.end method

.method public final d(Landroid/content/Context;)Ljava/util/List;
    .locals 5

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, "activity"

    .line 19
    .line 20
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    instance-of v2, p1, Landroid/app/ActivityManager;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    check-cast p1, Landroid/app/ActivityManager;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    :cond_1
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :cond_2
    check-cast p1, Ljava/lang/Iterable;

    .line 45
    .line 46
    invoke-static {p1}, Lyc/m;->L(Ljava/lang/Iterable;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Ljava/lang/Iterable;

    .line 51
    .line 52
    new-instance v2, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_5

    .line 66
    .line 67
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    move-object v4, v3

    .line 72
    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 73
    .line 74
    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 75
    .line 76
    if-ne v4, v0, :cond_4

    .line 77
    .line 78
    const/4 v4, 0x1

    .line 79
    goto :goto_2

    .line 80
    :cond_4
    const/4 v4, 0x0

    .line 81
    :goto_2
    if-eqz v4, :cond_3

    .line 82
    .line 83
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    .line 88
    .line 89
    const/16 v0, 0xa

    .line 90
    .line 91
    invoke-static {v2, v0}, Lyc/m;->r(Ljava/lang/Iterable;I)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    .line 97
    .line 98
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_6

    .line 107
    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 113
    .line 114
    invoke-static {}, Lt7/f0$e$d$a$c;->a()Lt7/f0$e$d$a$c$a;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v3, v4}, Lt7/f0$e$d$a$c$a;->e(Ljava/lang/String;)Lt7/f0$e$d$a$c$a;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 125
    .line 126
    invoke-virtual {v3, v4}, Lt7/f0$e$d$a$c$a;->d(I)Lt7/f0$e$d$a$c$a;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 131
    .line 132
    invoke-virtual {v3, v4}, Lt7/f0$e$d$a$c$a;->c(I)Lt7/f0$e$d$a$c$a;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v2, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    invoke-virtual {v3, v2}, Lt7/f0$e$d$a$c$a;->b(Z)Lt7/f0$e$d$a$c$a;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v2}, Lt7/f0$e$d$a$c$a;->a()Lt7/f0$e$d$a$c;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_6
    return-object p1
.end method

.method public final e(Landroid/content/Context;)Lt7/f0$e$d$a$c;
    .locals 8

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    invoke-virtual {p0, p1}, Ln7/j;->d(Landroid/content/Context;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Iterable;

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    move-object v1, v0

    .line 31
    check-cast v1, Lt7/f0$e$d$a$c;

    .line 32
    .line 33
    invoke-virtual {v1}, Lt7/f0$e$d$a$c;->c()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-ne v1, v3, :cond_1

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v1, 0x0

    .line 42
    :goto_0
    if-eqz v1, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 v0, 0x0

    .line 46
    :goto_1
    check-cast v0, Lt7/f0$e$d$a$c;

    .line 47
    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    invoke-direct {p0}, Ln7/j;->f()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const/4 v4, 0x0

    .line 55
    const/4 v5, 0x0

    .line 56
    const/16 v6, 0xc

    .line 57
    .line 58
    const/4 v7, 0x0

    .line 59
    move-object v1, p0

    .line 60
    invoke-static/range {v1 .. v7}, Ln7/j;->c(Ln7/j;Ljava/lang/String;IIZILjava/lang/Object;)Lt7/f0$e$d$a$c;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :cond_3
    return-object v0
.end method
