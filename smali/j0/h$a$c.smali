.class final Lj0/h$a$c;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/h$a;->c(Ljava/util/List;Lj0/s;Lad/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:I

.field synthetic e:Ljava/lang/Object;

.field final synthetic f:Ljava/util/List;

.field final synthetic g:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj0/h$a$c;->f:Ljava/util/List;

    iput-object p2, p0, Lj0/h$a$c;->g:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lj0/h$a$c;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lj0/h$a$c;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lj0/h$a$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 3

    .line 1
    new-instance v0, Lj0/h$a$c;

    iget-object v1, p0, Lj0/h$a$c;->f:Ljava/util/List;

    iget-object v2, p0, Lj0/h$a$c;->g:Ljava/util/List;

    invoke-direct {v0, v1, v2, p2}, Lj0/h$a$c;-><init>(Ljava/util/List;Ljava/util/List;Lad/e;)V

    iput-object p1, v0, Lj0/h$a$c;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lj0/h$a$c;->a(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lj0/h$a$c;->d:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lj0/h$a$c;->a:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Ljava/util/Iterator;

    .line 18
    .line 19
    iget-object v4, p0, Lj0/h$a$c;->e:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v4, Ljava/util/List;

    .line 22
    .line 23
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    move-object v7, p0

    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    iget-object v1, p0, Lj0/h$a$c;->c:Ljava/lang/Object;

    .line 38
    .line 39
    iget-object v4, p0, Lj0/h$a$c;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v4, Lj0/g;

    .line 42
    .line 43
    iget-object v5, p0, Lj0/h$a$c;->a:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v5, Ljava/util/Iterator;

    .line 46
    .line 47
    iget-object v6, p0, Lj0/h$a$c;->e:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v6, Ljava/util/List;

    .line 50
    .line 51
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    move-object v7, p0

    .line 55
    move-object v9, v6

    .line 56
    move-object v6, v4

    .line 57
    move-object v4, v9

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lj0/h$a$c;->e:Ljava/lang/Object;

    .line 63
    .line 64
    iget-object v1, p0, Lj0/h$a$c;->f:Ljava/util/List;

    .line 65
    .line 66
    check-cast v1, Ljava/lang/Iterable;

    .line 67
    .line 68
    iget-object v4, p0, Lj0/h$a$c;->g:Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    move-object v5, p0

    .line 75
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_6

    .line 80
    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    check-cast v6, Lj0/g;

    .line 86
    .line 87
    iput-object v4, v5, Lj0/h$a$c;->e:Ljava/lang/Object;

    .line 88
    .line 89
    iput-object v1, v5, Lj0/h$a$c;->a:Ljava/lang/Object;

    .line 90
    .line 91
    iput-object v6, v5, Lj0/h$a$c;->b:Ljava/lang/Object;

    .line 92
    .line 93
    iput-object p1, v5, Lj0/h$a$c;->c:Ljava/lang/Object;

    .line 94
    .line 95
    iput v3, v5, Lj0/h$a$c;->d:I

    .line 96
    .line 97
    invoke-interface {v6, p1, v5}, Lj0/g;->a(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    if-ne v7, v0, :cond_3

    .line 102
    .line 103
    return-object v0

    .line 104
    :cond_3
    move-object v9, v1

    .line 105
    move-object v1, p1

    .line 106
    move-object p1, v7

    .line 107
    move-object v7, v5

    .line 108
    move-object v5, v9

    .line 109
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_4

    .line 116
    .line 117
    new-instance p1, Lj0/h$a$c$a;

    .line 118
    .line 119
    const/4 v8, 0x0

    .line 120
    invoke-direct {p1, v6, v8}, Lj0/h$a$c$a;-><init>(Lj0/g;Lad/e;)V

    .line 121
    .line 122
    .line 123
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    iput-object v4, v7, Lj0/h$a$c;->e:Ljava/lang/Object;

    .line 127
    .line 128
    iput-object v5, v7, Lj0/h$a$c;->a:Ljava/lang/Object;

    .line 129
    .line 130
    iput-object v8, v7, Lj0/h$a$c;->b:Ljava/lang/Object;

    .line 131
    .line 132
    iput-object v8, v7, Lj0/h$a$c;->c:Ljava/lang/Object;

    .line 133
    .line 134
    iput v2, v7, Lj0/h$a$c;->d:I

    .line 135
    .line 136
    invoke-interface {v6, v1, v7}, Lj0/g;->c(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-ne p1, v0, :cond_5

    .line 141
    .line 142
    return-object v0

    .line 143
    :goto_2
    move-object v5, v7

    .line 144
    goto :goto_0

    .line 145
    :cond_4
    move-object p1, v1

    .line 146
    :cond_5
    move-object v1, v5

    .line 147
    goto :goto_2

    .line 148
    :cond_6
    return-object p1
.end method
