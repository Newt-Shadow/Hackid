.class final Lhb/l$b;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhb/l;->q(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lhb/l;

.field final synthetic f:Landroid/view/Window;


# direct methods
.method constructor <init>(Lhb/l;Landroid/view/Window;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhb/l$b;->e:Lhb/l;

    iput-object p2, p0, Lhb/l$b;->f:Landroid/view/Window;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "decorView"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    sget-object v2, Lib/d;->e:Lib/d$a;

    .line 11
    .line 12
    iget-object v3, v1, Lhb/l$b;->e:Lhb/l;

    .line 13
    .line 14
    invoke-static {v3}, Lhb/l;->n(Lhb/l;)Lgb/b;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    iget-object v3, v1, Lhb/l$b;->e:Lhb/l;

    .line 19
    .line 20
    invoke-static {v3}, Lhb/l;->j(Lhb/l;)Lfb/b;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Leb/d;->f()Llb/g;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    iget-object v3, v1, Lhb/l$b;->e:Lhb/l;

    .line 29
    .line 30
    invoke-static {v3}, Lhb/l;->j(Lhb/l;)Lfb/b;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Lfb/b;->j0()Lhb/n;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Lhb/n;->f()J

    .line 39
    .line 40
    .line 41
    move-result-wide v6

    .line 42
    new-instance v8, Lhb/l$b$a;

    .line 43
    .line 44
    iget-object v3, v1, Lhb/l$b;->e:Lhb/l;

    .line 45
    .line 46
    invoke-direct {v8, v3}, Lhb/l$b$a;-><init>(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    new-instance v9, Lhb/l$b$b;

    .line 50
    .line 51
    iget-object v3, v1, Lhb/l$b;->e:Lhb/l;

    .line 52
    .line 53
    iget-object v10, v1, Lhb/l$b;->f:Landroid/view/Window;

    .line 54
    .line 55
    invoke-direct {v9, v3, v0, v10}, Lhb/l$b$b;-><init>(Lhb/l;Landroid/view/View;Landroid/view/Window;)V

    .line 56
    .line 57
    .line 58
    move-object/from16 v3, p1

    .line 59
    .line 60
    invoke-virtual/range {v2 .. v9}, Lib/d$a;->a(Landroid/view/View;Lgb/b;Llb/g;JLid/a;Lid/a;)Lib/d;

    .line 61
    .line 62
    .line 63
    move-result-object v12

    .line 64
    new-instance v2, Lib/j;

    .line 65
    .line 66
    const/4 v13, 0x0

    .line 67
    const/4 v14, 0x0

    .line 68
    const/4 v15, 0x0

    .line 69
    const/16 v16, 0x0

    .line 70
    .line 71
    const/16 v17, 0x1e

    .line 72
    .line 73
    const/16 v18, 0x0

    .line 74
    .line 75
    move-object v11, v2

    .line 76
    invoke-direct/range {v11 .. v18}, Lib/j;-><init>(Lib/d;ZZZLcom/posthog/internal/replay/RRWireframe;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 77
    .line 78
    .line 79
    iget-object v3, v1, Lhb/l$b;->e:Lhb/l;

    .line 80
    .line 81
    invoke-static {v3}, Lhb/l;->l(Lhb/l;)Ljava/util/WeakHashMap;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    iget-object v2, v1, Lhb/l$b;->e:Lhb/l;

    .line 91
    .line 92
    invoke-static {v2}, Lhb/l;->j(Lhb/l;)Lfb/b;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2}, Leb/d;->o()Llb/i;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v4, "Session Replay onDecorViewReady failed: "

    .line 106
    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const/16 v0, 0x2e

    .line 114
    .line 115
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-interface {v2, v0}, Llb/i;->a(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lhb/l$b;->a(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 7
    .line 8
    return-object p1
.end method
