.class public final Lu8/t$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu8/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lu8/t$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ll8/e;Lad/e;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Lu8/t$a$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lu8/t$a$a;

    .line 7
    .line 8
    iget v1, v0, Lu8/t$a$a;->d:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lu8/t$a$a;->d:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lu8/t$a$a;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lu8/t$a$a;-><init>(Lu8/t$a;Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lu8/t$a$a;->b:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lu8/t$a$a;->d:I

    .line 32
    .line 33
    const-string v3, "FirebaseSessions"

    .line 34
    .line 35
    const/4 v4, 0x2

    .line 36
    const/4 v5, 0x1

    .line 37
    const-string v6, ""

    .line 38
    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    if-eq v2, v5, :cond_2

    .line 42
    .line 43
    if-ne v2, v4, :cond_1

    .line 44
    .line 45
    iget-object p1, v0, Lu8/t$a$a;->a:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p1, Ljava/lang/String;

    .line 48
    .line 49
    :try_start_0
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_3

    .line 53
    :catch_0
    move-exception p2

    .line 54
    goto :goto_4

    .line 55
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_2
    iget-object p1, v0, Lu8/t$a$a;->a:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p1, Ll8/e;

    .line 66
    .line 67
    :try_start_1
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    const/4 p2, 0x0

    .line 75
    :try_start_2
    invoke-interface {p1, p2}, Ll8/e;->a(Z)Lm6/Task;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    const-string v2, "getToken(...)"

    .line 80
    .line 81
    invoke-static {p2, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iput-object p1, v0, Lu8/t$a$a;->a:Ljava/lang/Object;

    .line 85
    .line 86
    iput v5, v0, Lu8/t$a$a;->d:I

    .line 87
    .line 88
    invoke-static {p2, v0}, Lde/b;->a(Lm6/Task;Lad/e;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    if-ne p2, v1, :cond_4

    .line 93
    .line 94
    return-object v1

    .line 95
    :cond_4
    :goto_1
    check-cast p2, Lcom/google/firebase/installations/g;

    .line 96
    .line 97
    invoke-virtual {p2}, Lcom/google/firebase/installations/g;->b()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 101
    move-object v7, p2

    .line 102
    move-object p2, p1

    .line 103
    move-object p1, v7

    .line 104
    goto :goto_2

    .line 105
    :catch_1
    move-exception p2

    .line 106
    const-string v2, "Error getting authentication token."

    .line 107
    .line 108
    invoke-static {v3, v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .line 110
    .line 111
    move-object p2, p1

    .line 112
    move-object p1, v6

    .line 113
    :goto_2
    :try_start_3
    invoke-interface {p2}, Ll8/e;->getId()Lm6/Task;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    const-string v2, "getId(...)"

    .line 118
    .line 119
    invoke-static {p2, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iput-object p1, v0, Lu8/t$a$a;->a:Ljava/lang/Object;

    .line 123
    .line 124
    iput v4, v0, Lu8/t$a$a;->d:I

    .line 125
    .line 126
    invoke-static {p2, v0}, Lde/b;->a(Lm6/Task;Lad/e;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    if-ne p2, v1, :cond_5

    .line 131
    .line 132
    return-object v1

    .line 133
    :cond_5
    :goto_3
    check-cast p2, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 134
    .line 135
    if-nez p2, :cond_6

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_6
    move-object v6, p2

    .line 139
    goto :goto_5

    .line 140
    :goto_4
    const-string v0, "Error getting Firebase installation id ."

    .line 141
    .line 142
    invoke-static {v3, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    .line 144
    .line 145
    :goto_5
    new-instance p2, Lu8/t;

    .line 146
    .line 147
    const/4 v0, 0x0

    .line 148
    invoke-direct {p2, v6, p1, v0}, Lu8/t;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 149
    .line 150
    .line 151
    return-object p2
.end method
