.class final Lrf/o$a$a;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrf/o$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;

.field final synthetic c:Lrf/o;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lrf/o;

.field final synthetic f:Lsf/d;

.field final synthetic g:J


# direct methods
.method constructor <init>(Lrf/o;Ljava/lang/String;Lrf/o;Lsf/d;JLad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrf/o$a$a;->c:Lrf/o;

    iput-object p2, p0, Lrf/o$a$a;->d:Ljava/lang/String;

    iput-object p3, p0, Lrf/o$a$a;->e:Lrf/o;

    iput-object p4, p0, Lrf/o$a$a;->f:Lsf/d;

    iput-wide p5, p0, Lrf/o$a$a;->g:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 9

    .line 1
    new-instance v8, Lrf/o$a$a;

    iget-object v1, p0, Lrf/o$a$a;->c:Lrf/o;

    iget-object v2, p0, Lrf/o$a$a;->d:Ljava/lang/String;

    iget-object v3, p0, Lrf/o$a$a;->e:Lrf/o;

    iget-object v4, p0, Lrf/o$a$a;->f:Lsf/d;

    iget-wide v5, p0, Lrf/o$a$a;->g:J

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lrf/o$a$a;-><init>(Lrf/o;Ljava/lang/String;Lrf/o;Lsf/d;JLad/e;)V

    iput-object p1, v8, Lrf/o$a$a;->b:Ljava/lang/Object;

    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltd/l0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lrf/o$a$a;->invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lrf/o$a$a;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lrf/o$a$a;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lrf/o$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lrf/o$a$a;->a:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lrf/o$a$a;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Ltd/l0;

    .line 14
    .line 15
    iget-object v0, p0, Lrf/o$a$a;->c:Lrf/o;

    .line 16
    .line 17
    invoke-virtual {v0}, Lrf/o;->s()Lrf/s;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "Now loading "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lrf/o$a$a;->d:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lrf/s;->t(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lrf/o$a$a;->c:Lrf/o;

    .line 44
    .line 45
    invoke-static {v0}, Lrf/o;->l(Lrf/o;)Landroid/media/SoundPool;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lrf/o$a$a;->d:Ljava/lang/String;

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iget-object v2, p0, Lrf/o$a$a;->c:Lrf/o;

    .line 61
    .line 62
    invoke-static {v2}, Lrf/o;->m(Lrf/o;)Lrf/p;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Lrf/p;->b()Ljava/util/Map;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    iget-object v3, p0, Lrf/o$a$a;->e:Lrf/o;

    .line 71
    .line 72
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lrf/o$a$a;->c:Lrf/o;

    .line 76
    .line 77
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v1, v0}, Lrf/o;->v(Ljava/lang/Integer;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lrf/o$a$a;->c:Lrf/o;

    .line 85
    .line 86
    invoke-virtual {v0}, Lrf/o;->s()Lrf/s;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v2, "time to call load() for "

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-object v2, p0, Lrf/o$a$a;->f:Lsf/d;

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v2, ": "

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 111
    .line 112
    .line 113
    move-result-wide v2

    .line 114
    iget-wide v4, p0, Lrf/o$a$a;->g:J

    .line 115
    .line 116
    sub-long/2addr v2, v4

    .line 117
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v2, " player="

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {v0, p1}, Lrf/s;->t(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 136
    .line 137
    return-object p1

    .line 138
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 139
    .line 140
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 141
    .line 142
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p1
.end method
