.class final Lu8/l$a;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/l;-><init>(Lh7/f;Lx8/j;Lad/i;Lu8/q0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lu8/l;

.field final synthetic c:Lu8/q0;


# direct methods
.method constructor <init>(Lu8/l;Lu8/q0;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu8/l$a;->b:Lu8/l;

    iput-object p2, p0, Lu8/l$a;->c:Lu8/q0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method

.method public static synthetic a(Lu8/q0;Ljava/lang/String;Lh7/n;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lu8/l$a;->f(Lu8/q0;Ljava/lang/String;Lh7/n;)V

    return-void
.end method

.method private static final f(Lu8/q0;Ljava/lang/String;Lh7/n;)V
    .locals 0

    .line 1
    const-string p1, "FirebaseSessions"

    .line 2
    .line 3
    const-string p2, "FirebaseApp instance deleted. Sessions library will stop collecting data."

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lu8/q0;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 2

    .line 1
    new-instance p1, Lu8/l$a;

    iget-object v0, p0, Lu8/l$a;->b:Lu8/l;

    iget-object v1, p0, Lu8/l$a;->c:Lu8/q0;

    invoke-direct {p1, v0, v1, p2}, Lu8/l$a;-><init>(Lu8/l;Lu8/q0;Lad/e;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltd/l0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lu8/l$a;->invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lu8/l$a;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lu8/l$a;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lu8/l$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lu8/l$a;->a:I

    .line 6
    .line 7
    const-string v2, "FirebaseSessions"

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    if-eq v1, v4, :cond_1

    .line 14
    .line 15
    if-ne v1, v3, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    sget-object p1, Lv8/b;->a:Lv8/b;

    .line 37
    .line 38
    iput v4, p0, Lu8/l$a;->a:I

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Lv8/b;->c(Lad/e;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-ne p1, v0, :cond_3

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_3
    :goto_0
    check-cast p1, Ljava/util/Map;

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Ljava/lang/Iterable;

    .line 54
    .line 55
    instance-of v1, p1, Ljava/util/Collection;

    .line 56
    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    move-object v1, p1

    .line 60
    check-cast v1, Ljava/util/Collection;

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lv8/c;

    .line 84
    .line 85
    invoke-interface {v1}, Lv8/c;->a()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_5

    .line 90
    .line 91
    const/4 v4, 0x0

    .line 92
    :cond_6
    :goto_1
    if-eqz v4, :cond_7

    .line 93
    .line 94
    const-string p1, "No Sessions subscribers. Not listening to lifecycle events."

    .line 95
    .line 96
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_7
    iget-object p1, p0, Lu8/l$a;->b:Lu8/l;

    .line 105
    .line 106
    invoke-static {p1}, Lu8/l;->b(Lu8/l;)Lx8/j;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iput v3, p0, Lu8/l$a;->a:I

    .line 111
    .line 112
    invoke-virtual {p1, p0}, Lx8/j;->f(Lad/e;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-ne p1, v0, :cond_8

    .line 117
    .line 118
    return-object v0

    .line 119
    :cond_8
    :goto_2
    iget-object p1, p0, Lu8/l$a;->b:Lu8/l;

    .line 120
    .line 121
    invoke-static {p1}, Lu8/l;->b(Lu8/l;)Lx8/j;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1}, Lx8/j;->c()Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-nez p1, :cond_9

    .line 130
    .line 131
    const-string p1, "Sessions SDK disabled. Not listening to lifecycle events."

    .line 132
    .line 133
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_9
    iget-object p1, p0, Lu8/l$a;->b:Lu8/l;

    .line 142
    .line 143
    invoke-static {p1}, Lu8/l;->a(Lu8/l;)Lh7/f;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    iget-object v0, p0, Lu8/l$a;->c:Lu8/q0;

    .line 148
    .line 149
    new-instance v1, Lu8/k;

    .line 150
    .line 151
    invoke-direct {v1, v0}, Lu8/k;-><init>(Lu8/q0;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v1}, Lh7/f;->h(Lh7/g;)V

    .line 155
    .line 156
    .line 157
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 158
    .line 159
    :goto_3
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 160
    .line 161
    return-object p1
.end method
