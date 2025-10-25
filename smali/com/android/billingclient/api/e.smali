.class Lcom/android/billingclient/api/e;
.super Lcom/android/billingclient/api/d;
.source "SourceFile"


# instance fields
.field private A:Z

.field private B:Ljava/util/concurrent/ExecutorService;

.field private volatile a:I

.field private final b:Ljava/lang/String;

.field private final c:Landroid/os/Handler;

.field private volatile d:Lcom/android/billingclient/api/b1;

.field private e:Landroid/content/Context;

.field private f:Lcom/android/billingclient/api/i0;

.field private volatile g:Lcom/google/android/gms/internal/play_billing/i6;

.field private volatile h:Lcom/android/billingclient/api/b0;

.field private i:Z

.field private j:Z

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Lcom/android/billingclient/api/n0;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/n0;Lc2/o;Ljava/lang/String;Ljava/lang/String;Lc2/s;Lcom/android/billingclient/api/i0;Ljava/util/concurrent/ExecutorService;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/billingclient/api/d;-><init>()V

    const/4 p5, 0x0

    iput p5, p0, Lcom/android/billingclient/api/e;->a:I

    new-instance p7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p8

    invoke-direct {p7, p8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p7, p0, Lcom/android/billingclient/api/e;->c:Landroid/os/Handler;

    iput p5, p0, Lcom/android/billingclient/api/e;->k:I

    iput-object p4, p0, Lcom/android/billingclient/api/e;->b:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p6

    move-object v5, p4

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/e;->t(Landroid/content/Context;Lc2/o;Lcom/android/billingclient/api/n0;Lc2/s;Ljava/lang/String;Lcom/android/billingclient/api/i0;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/billingclient/api/i0;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/android/billingclient/api/d;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/e;->a:I

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/billingclient/api/e;->c:Landroid/os/Handler;

    iput p1, p0, Lcom/android/billingclient/api/e;->k:I

    .line 4
    invoke-static {}, Lcom/android/billingclient/api/e;->b0()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/e;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/k5;->E()Lcom/google/android/gms/internal/play_billing/j5;

    move-result-object p2

    .line 7
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/j5;->m(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/j5;

    iget-object p1, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/j5;->j(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/j5;

    iget-object p1, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/y1;->c()Lcom/google/android/gms/internal/play_billing/b2;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/k5;

    .line 10
    new-instance p3, Lcom/android/billingclient/api/k0;

    invoke-direct {p3, p1, p2}, Lcom/android/billingclient/api/k0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/k5;)V

    iput-object p3, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    iget-object p1, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/n0;Landroid/content/Context;Lc2/l0;Lcom/android/billingclient/api/i0;Ljava/util/concurrent/ExecutorService;)V
    .locals 7

    .line 12
    invoke-direct {p0}, Lcom/android/billingclient/api/d;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/e;->a:I

    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    invoke-direct {p4, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/android/billingclient/api/e;->c:Landroid/os/Handler;

    iput p1, p0, Lcom/android/billingclient/api/e;->k:I

    .line 13
    invoke-static {}, Lcom/android/billingclient/api/e;->b0()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/e;->b:Ljava/lang/String;

    .line 14
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/k5;->E()Lcom/google/android/gms/internal/play_billing/j5;

    move-result-object p1

    .line 16
    invoke-static {}, Lcom/android/billingclient/api/e;->b0()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/j5;->m(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/j5;

    iget-object p3, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 17
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/j5;->j(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/j5;

    iget-object p3, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/y1;->c()Lcom/google/android/gms/internal/play_billing/b2;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/k5;

    .line 19
    new-instance p4, Lcom/android/billingclient/api/k0;

    invoke-direct {p4, p3, p1}, Lcom/android/billingclient/api/k0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/k5;)V

    iput-object p4, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    const-string p1, "BillingClient"

    const-string p3, "Billing client should have a valid listener but the provided is null."

    .line 20
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/billingclient/api/b1;

    iget-object v1, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    move-object v0, p1

    .line 21
    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/b1;-><init>(Landroid/content/Context;Lc2/o;Lc2/l0;Lc2/c;Lc2/s;Lcom/android/billingclient/api/i0;)V

    iput-object p1, p0, Lcom/android/billingclient/api/e;->d:Lcom/android/billingclient/api/b1;

    iput-object p2, p0, Lcom/android/billingclient/api/e;->z:Lcom/android/billingclient/api/n0;

    iget-object p1, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/n0;Landroid/content/Context;Lc2/o;Lc2/c;Lcom/android/billingclient/api/i0;Ljava/util/concurrent/ExecutorService;)V
    .locals 7

    .line 23
    invoke-static {}, Lcom/android/billingclient/api/e;->b0()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/billingclient/api/d;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/e;->a:I

    new-instance p6, Landroid/os/Handler;

    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p7

    invoke-direct {p6, p7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p6, p0, Lcom/android/billingclient/api/e;->c:Landroid/os/Handler;

    iput p1, p0, Lcom/android/billingclient/api/e;->k:I

    iput-object v5, p0, Lcom/android/billingclient/api/e;->b:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p2

    move-object v4, p5

    .line 25
    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/e;->s(Landroid/content/Context;Lc2/o;Lcom/android/billingclient/api/n0;Lc2/c;Ljava/lang/String;Lcom/android/billingclient/api/i0;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/n0;Landroid/content/Context;Lc2/o;Lc2/s;Lcom/android/billingclient/api/i0;Ljava/util/concurrent/ExecutorService;)V
    .locals 9

    .line 26
    invoke-static {}, Lcom/android/billingclient/api/e;->b0()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    move-object v3, p4

    move-object v6, p5

    .line 27
    invoke-direct/range {v0 .. v8}, Lcom/android/billingclient/api/e;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/n0;Lc2/o;Ljava/lang/String;Ljava/lang/String;Lc2/s;Lcom/android/billingclient/api/i0;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method static bridge synthetic A(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->v:Z

    return-void
.end method

.method static bridge synthetic A0(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->o:Z

    return-void
.end method

.method static bridge synthetic B(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->w:Z

    return-void
.end method

.method static bridge synthetic C(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->x:Z

    return-void
.end method

.method static bridge synthetic D(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->y:Z

    return-void
.end method

.method static bridge synthetic E(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->l:Z

    return-void
.end method

.method static bridge synthetic F(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->m:Z

    return-void
.end method

.method static bridge synthetic G(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->n:Z

    return-void
.end method

.method static bridge synthetic H(Lcom/android/billingclient/api/e;Lcom/google/android/gms/internal/play_billing/i6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/e;->g:Lcom/google/android/gms/internal/play_billing/i6;

    return-void
.end method

.method static bridge synthetic I(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->j:Z

    return-void
.end method

.method static bridge synthetic J(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->i:Z

    return-void
.end method

.method static bridge synthetic S(Lcom/android/billingclient/api/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/billingclient/api/e;->k:I

    return p0
.end method

.method static bridge synthetic W(Lcom/android/billingclient/api/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/billingclient/api/e;->x:Z

    return p0
.end method

.method static synthetic X(Lcom/android/billingclient/api/e;Ljava/lang/String;I)Lc2/q0;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v2, "Querying owned items, item type: "

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v2, "BillingClient"

    .line 14
    .line 15
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/b0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-boolean v3, v1, Lcom/android/billingclient/api/e;->n:Z

    .line 24
    .line 25
    iget-boolean v4, v1, Lcom/android/billingclient/api/e;->v:Z

    .line 26
    .line 27
    iget-object v5, v1, Lcom/android/billingclient/api/e;->b:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    const/4 v7, 0x0

    .line 31
    invoke-static {v3, v4, v6, v7, v5}, Lcom/google/android/gms/internal/play_billing/b0;->d(ZZZZLjava/lang/String;)Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const/4 v4, 0x0

    .line 36
    move-object v12, v4

    .line 37
    :goto_0
    const/16 v5, 0x9

    .line 38
    .line 39
    :try_start_0
    iget-boolean v8, v1, Lcom/android/billingclient/api/e;->n:Z

    .line 40
    .line 41
    if-eqz v8, :cond_1

    .line 42
    .line 43
    iget-object v8, v1, Lcom/android/billingclient/api/e;->g:Lcom/google/android/gms/internal/play_billing/i6;

    .line 44
    .line 45
    iget-boolean v9, v1, Lcom/android/billingclient/api/e;->v:Z

    .line 46
    .line 47
    if-eq v6, v9, :cond_0

    .line 48
    .line 49
    move v9, v5

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    const/16 v9, 0x13

    .line 52
    .line 53
    :goto_1
    iget-object v10, v1, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    move-object/from16 v11, p1

    .line 60
    .line 61
    move-object v13, v3

    .line 62
    invoke-interface/range {v8 .. v13}, Lcom/google/android/gms/internal/play_billing/i6;->T0(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    move-object/from16 v11, p1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_1
    iget-object v8, v1, Lcom/android/billingclient/api/e;->g:Lcom/google/android/gms/internal/play_billing/i6;

    .line 70
    .line 71
    iget-object v9, v1, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    const/4 v10, 0x3

    .line 78
    move-object/from16 v11, p1

    .line 79
    .line 80
    invoke-interface {v8, v10, v9, v11, v12}, Lcom/google/android/gms/internal/play_billing/i6;->S(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 81
    .line 82
    .line 83
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    :goto_2
    const-string v9, "getPurchase()"

    .line 85
    .line 86
    invoke-static {v8, v2, v9}, Lcom/android/billingclient/api/y0;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/x0;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    invoke-virtual {v9}, Lcom/android/billingclient/api/x0;->a()Lcom/android/billingclient/api/h;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    sget-object v12, Lcom/android/billingclient/api/j0;->l:Lcom/android/billingclient/api/h;

    .line 95
    .line 96
    if-eq v10, v12, :cond_2

    .line 97
    .line 98
    iget-object v0, v1, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 99
    .line 100
    invoke-virtual {v9}, Lcom/android/billingclient/api/x0;->b()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-static {v1, v5, v10}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Lc2/q0;

    .line 112
    .line 113
    invoke-direct {v0, v10, v4}, Lc2/q0;-><init>(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 114
    .line 115
    .line 116
    goto/16 :goto_4

    .line 117
    .line 118
    :cond_2
    const-string v9, "INAPP_PURCHASE_ITEM_LIST"

    .line 119
    .line 120
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    const-string v10, "INAPP_PURCHASE_DATA_LIST"

    .line 125
    .line 126
    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    const-string v12, "INAPP_DATA_SIGNATURE_LIST"

    .line 131
    .line 132
    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 133
    .line 134
    .line 135
    move-result-object v12

    .line 136
    move v13, v7

    .line 137
    move v14, v13

    .line 138
    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 139
    .line 140
    .line 141
    move-result v15

    .line 142
    if-ge v13, v15, :cond_4

    .line 143
    .line 144
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v15

    .line 148
    check-cast v15, Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v16

    .line 154
    move-object/from16 v6, v16

    .line 155
    .line 156
    check-cast v6, Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v16

    .line 162
    check-cast v16, Ljava/lang/String;

    .line 163
    .line 164
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    const-string v4, "Sku is owned: "

    .line 169
    .line 170
    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/b0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :try_start_1
    new-instance v4, Lcom/android/billingclient/api/Purchase;

    .line 178
    .line 179
    invoke-direct {v4, v15, v6}, Lcom/android/billingclient/api/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->i()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    if-eqz v6, :cond_3

    .line 191
    .line 192
    const-string v6, "BUG: empty/null token!"

    .line 193
    .line 194
    invoke-static {v2, v6}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    const/4 v14, 0x1

    .line 198
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    add-int/lit8 v13, v13, 0x1

    .line 202
    .line 203
    const/4 v4, 0x0

    .line 204
    const/4 v6, 0x1

    .line 205
    const/4 v7, 0x0

    .line 206
    goto :goto_3

    .line 207
    :catch_0
    move-exception v0

    .line 208
    const-string v3, "Got an exception trying to decode the purchase!"

    .line 209
    .line 210
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    .line 212
    .line 213
    iget-object v0, v1, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 214
    .line 215
    sget-object v1, Lcom/android/billingclient/api/j0;->j:Lcom/android/billingclient/api/h;

    .line 216
    .line 217
    const/16 v2, 0x33

    .line 218
    .line 219
    invoke-static {v2, v5, v1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 224
    .line 225
    .line 226
    new-instance v0, Lc2/q0;

    .line 227
    .line 228
    const/4 v2, 0x0

    .line 229
    invoke-direct {v0, v1, v2}, Lc2/q0;-><init>(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 230
    .line 231
    .line 232
    goto :goto_4

    .line 233
    :cond_4
    if-eqz v14, :cond_5

    .line 234
    .line 235
    iget-object v4, v1, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 236
    .line 237
    const/16 v6, 0x1a

    .line 238
    .line 239
    sget-object v7, Lcom/android/billingclient/api/j0;->j:Lcom/android/billingclient/api/h;

    .line 240
    .line 241
    invoke-static {v6, v5, v7}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    invoke-interface {v4, v5}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 246
    .line 247
    .line 248
    :cond_5
    const-string v4, "INAPP_CONTINUATION_TOKEN"

    .line 249
    .line 250
    invoke-virtual {v8, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v12

    .line 254
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    const-string v5, "Continuation token: "

    .line 259
    .line 260
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/b0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    if-eqz v4, :cond_6

    .line 272
    .line 273
    new-instance v1, Lc2/q0;

    .line 274
    .line 275
    sget-object v2, Lcom/android/billingclient/api/j0;->l:Lcom/android/billingclient/api/h;

    .line 276
    .line 277
    invoke-direct {v1, v2, v0}, Lc2/q0;-><init>(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 278
    .line 279
    .line 280
    move-object v0, v1

    .line 281
    goto :goto_4

    .line 282
    :cond_6
    const/4 v4, 0x0

    .line 283
    const/4 v6, 0x1

    .line 284
    const/4 v7, 0x0

    .line 285
    goto/16 :goto_0

    .line 286
    .line 287
    :catch_1
    move-exception v0

    .line 288
    iget-object v1, v1, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 289
    .line 290
    sget-object v3, Lcom/android/billingclient/api/j0;->m:Lcom/android/billingclient/api/h;

    .line 291
    .line 292
    const/16 v4, 0x34

    .line 293
    .line 294
    invoke-static {v4, v5, v3}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    invoke-interface {v1, v4}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 299
    .line 300
    .line 301
    const-string v1, "Got exception trying to get purchasesm try to reconnect"

    .line 302
    .line 303
    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 304
    .line 305
    .line 306
    new-instance v0, Lc2/q0;

    .line 307
    .line 308
    const/4 v1, 0x0

    .line 309
    invoke-direct {v0, v3, v1}, Lc2/q0;-><init>(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 310
    .line 311
    .line 312
    :goto_4
    return-object v0
.end method

.method private final Y()Landroid/os/Handler;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/billingclient/api/e;->c:Landroid/os/Handler;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-object v0
.end method

.method private final Z(Lcom/android/billingclient/api/h;)Lcom/android/billingclient/api/h;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/e;->c:Landroid/os/Handler;

    .line 9
    .line 10
    new-instance v1, Lcom/android/billingclient/api/c1;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/android/billingclient/api/c1;-><init>(Lcom/android/billingclient/api/e;Lcom/android/billingclient/api/h;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method private final a0()Lcom/android/billingclient/api/h;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/billingclient/api/e;->a:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/android/billingclient/api/e;->a:I

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lcom/android/billingclient/api/j0;->j:Lcom/android/billingclient/api/h;

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/billingclient/api/j0;->m:Lcom/android/billingclient/api/h;

    .line 15
    .line 16
    :goto_1
    return-object v0
.end method

.method private static b0()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "com.android.billingclient.ktx.BuildConfig"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "VERSION_NAME"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    return-object v0

    .line 21
    :catch_0
    const-string v0, "6.2.0"

    .line 22
    .line 23
    return-object v0
.end method

.method private final c0(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/e;->B:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget v0, Lcom/google/android/gms/internal/play_billing/b0;->a:I

    .line 6
    .line 7
    new-instance v1, Lcom/android/billingclient/api/v;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/android/billingclient/api/v;-><init>(Lcom/android/billingclient/api/e;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/billingclient/api/e;->B:Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/e;->B:Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 21
    .line 22
    .line 23
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    long-to-double p2, p2

    .line 25
    new-instance v0, Lc2/d1;

    .line 26
    .line 27
    invoke-direct {v0, p1, p4}, Lc2/d1;-><init>(Ljava/util/concurrent/Future;Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    const-wide v1, 0x3fee666666666666L    # 0.95

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    mul-double/2addr p2, v1

    .line 36
    double-to-long p2, p2

    .line 37
    invoke-virtual {p5, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    .line 39
    .line 40
    return-object p1

    .line 41
    :catch_0
    move-exception p1

    .line 42
    const-string p2, "BillingClient"

    .line 43
    .line 44
    const-string p3, "Async task throws exception!"

    .line 45
    .line 46
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    return-object p1
.end method

.method private final d0(Ljava/lang/String;Lc2/m;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/e;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0xb

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 11
    .line 12
    sget-object v0, Lcom/android/billingclient/api/j0;->m:Lcom/android/billingclient/api/h;

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-static {v3, v2, v0}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {p1, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p2, v0, v1}, Lc2/m;->onPurchaseHistoryResponse(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance v4, Lcom/android/billingclient/api/x;

    .line 27
    .line 28
    invoke-direct {v4, p0, p1, p2}, Lcom/android/billingclient/api/x;-><init>(Lcom/android/billingclient/api/e;Ljava/lang/String;Lc2/m;)V

    .line 29
    .line 30
    .line 31
    const-wide/16 v5, 0x7530

    .line 32
    .line 33
    new-instance v7, Lcom/android/billingclient/api/r;

    .line 34
    .line 35
    invoke-direct {v7, p0, p2}, Lcom/android/billingclient/api/r;-><init>(Lcom/android/billingclient/api/e;Lc2/m;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->Y()Landroid/os/Handler;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    move-object v3, p0

    .line 43
    invoke-direct/range {v3 .. v8}, Lcom/android/billingclient/api/e;->c0(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->a0()Lcom/android/billingclient/api/h;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 54
    .line 55
    const/16 v3, 0x19

    .line 56
    .line 57
    invoke-static {v3, v2, p1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p2, p1, v1}, Lc2/m;->onPurchaseHistoryResponse(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void
.end method

.method private final e0(Ljava/lang/String;Lc2/n;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/e;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 10
    .line 11
    sget-object v0, Lcom/android/billingclient/api/j0;->m:Lcom/android/billingclient/api/h;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-static {v2, v1, v0}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/j;->s()Lcom/google/android/gms/internal/play_billing/j;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p2, v0, p1}, Lc2/n;->onQueryPurchasesResponse(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const-string p1, "BillingClient"

    .line 36
    .line 37
    const-string v0, "Please provide a valid product type."

    .line 38
    .line 39
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 43
    .line 44
    sget-object v0, Lcom/android/billingclient/api/j0;->g:Lcom/android/billingclient/api/h;

    .line 45
    .line 46
    const/16 v2, 0x32

    .line 47
    .line 48
    invoke-static {v2, v1, v0}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/j;->s()Lcom/google/android/gms/internal/play_billing/j;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p2, v0, p1}, Lc2/n;->onQueryPurchasesResponse(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    new-instance v3, Lcom/android/billingclient/api/w;

    .line 64
    .line 65
    invoke-direct {v3, p0, p1, p2}, Lcom/android/billingclient/api/w;-><init>(Lcom/android/billingclient/api/e;Ljava/lang/String;Lc2/n;)V

    .line 66
    .line 67
    .line 68
    const-wide/16 v4, 0x7530

    .line 69
    .line 70
    new-instance v6, Lcom/android/billingclient/api/m;

    .line 71
    .line 72
    invoke-direct {v6, p0, p2}, Lcom/android/billingclient/api/m;-><init>(Lcom/android/billingclient/api/e;Lc2/n;)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->Y()Landroid/os/Handler;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    move-object v2, p0

    .line 80
    invoke-direct/range {v2 .. v7}, Lcom/android/billingclient/api/e;->c0(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-nez p1, :cond_2

    .line 85
    .line 86
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->a0()Lcom/android/billingclient/api/h;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object v0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 91
    .line 92
    const/16 v2, 0x19

    .line 93
    .line 94
    invoke-static {v2, v1, p1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 99
    .line 100
    .line 101
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/j;->s()Lcom/google/android/gms/internal/play_billing/j;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-interface {p2, p1, v0}, Lc2/n;->onQueryPurchasesResponse(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    return-void
.end method

.method private final f0(Lcom/android/billingclient/api/h;II)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/h;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "Unable to create logging payload"

    .line 7
    .line 8
    const-string v3, "BillingLogger"

    .line 9
    .line 10
    const/4 v4, 0x5

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 14
    .line 15
    sget v5, Lcom/android/billingclient/api/h0;->a:I

    .line 16
    .line 17
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/p4;->G()Lcom/google/android/gms/internal/play_billing/o4;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/z4;->G()Lcom/google/android/gms/internal/play_billing/v4;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    invoke-virtual {p1}, Lcom/android/billingclient/api/h;->b()I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/play_billing/v4;->n(I)Lcom/google/android/gms/internal/play_billing/v4;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/android/billingclient/api/h;->a()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v6, p1}, Lcom/google/android/gms/internal/play_billing/v4;->m(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/v4;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6, p2}, Lcom/google/android/gms/internal/play_billing/v4;->o(I)Lcom/google/android/gms/internal/play_billing/v4;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/play_billing/o4;->j(Lcom/google/android/gms/internal/play_billing/v4;)Lcom/google/android/gms/internal/play_billing/o4;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/play_billing/o4;->n(I)Lcom/google/android/gms/internal/play_billing/o4;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/r5;->D()Lcom/google/android/gms/internal/play_billing/p5;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/p5;->j(I)Lcom/google/android/gms/internal/play_billing/p5;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/y1;->c()Lcom/google/android/gms/internal/play_billing/b2;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lcom/google/android/gms/internal/play_billing/r5;

    .line 60
    .line 61
    invoke-virtual {v5, p1}, Lcom/google/android/gms/internal/play_billing/o4;->m(Lcom/google/android/gms/internal/play_billing/r5;)Lcom/google/android/gms/internal/play_billing/o4;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/y1;->c()Lcom/google/android/gms/internal/play_billing/b2;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/google/android/gms/internal/play_billing/p4;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    move-object v1, p1

    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception p1

    .line 73
    invoke-static {v3, v2, p1}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 81
    .line 82
    sget p2, Lcom/android/billingclient/api/h0;->a:I

    .line 83
    .line 84
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/t4;->E()Lcom/google/android/gms/internal/play_billing/s4;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p2, v4}, Lcom/google/android/gms/internal/play_billing/s4;->m(I)Lcom/google/android/gms/internal/play_billing/s4;

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/r5;->D()Lcom/google/android/gms/internal/play_billing/p5;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/play_billing/p5;->j(I)Lcom/google/android/gms/internal/play_billing/p5;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/y1;->c()Lcom/google/android/gms/internal/play_billing/b2;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    check-cast p3, Lcom/google/android/gms/internal/play_billing/r5;

    .line 103
    .line 104
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/s4;->j(Lcom/google/android/gms/internal/play_billing/r5;)Lcom/google/android/gms/internal/play_billing/s4;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/y1;->c()Lcom/google/android/gms/internal/play_billing/b2;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    check-cast p2, Lcom/google/android/gms/internal/play_billing/t4;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    .line 113
    move-object v1, p2

    .line 114
    goto :goto_1

    .line 115
    :catch_1
    move-exception p2

    .line 116
    invoke-static {v3, v2, p2}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    :goto_1
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/i0;->c(Lcom/google/android/gms/internal/play_billing/t4;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method static bridge synthetic g0(Lcom/android/billingclient/api/e;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic j0(Lcom/android/billingclient/api/e;)Landroid/os/Handler;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->Y()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic k0(Lcom/android/billingclient/api/e;)Lcom/android/billingclient/api/b1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/e;->d:Lcom/android/billingclient/api/b1;

    return-object p0
.end method

.method static synthetic l0(Lcom/android/billingclient/api/e;Ljava/lang/String;)Lcom/android/billingclient/api/g0;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v2, "Querying purchase history, item type: "

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v2, "BillingClient"

    .line 14
    .line 15
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/b0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-boolean v3, v1, Lcom/android/billingclient/api/e;->n:Z

    .line 24
    .line 25
    iget-boolean v4, v1, Lcom/android/billingclient/api/e;->v:Z

    .line 26
    .line 27
    iget-object v5, v1, Lcom/android/billingclient/api/e;->b:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    const/4 v7, 0x0

    .line 31
    invoke-static {v3, v4, v6, v7, v5}, Lcom/google/android/gms/internal/play_billing/b0;->d(ZZZZLjava/lang/String;)Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const/4 v4, 0x0

    .line 36
    move-object v12, v4

    .line 37
    :goto_0
    iget-boolean v5, v1, Lcom/android/billingclient/api/e;->l:Z

    .line 38
    .line 39
    if-nez v5, :cond_0

    .line 40
    .line 41
    const-string v0, "getPurchaseHistory is not supported on current device"

    .line 42
    .line 43
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/android/billingclient/api/g0;

    .line 47
    .line 48
    sget-object v1, Lcom/android/billingclient/api/j0;->q:Lcom/android/billingclient/api/h;

    .line 49
    .line 50
    invoke-direct {v0, v1, v4}, Lcom/android/billingclient/api/g0;-><init>(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :cond_0
    const/16 v5, 0xb

    .line 56
    .line 57
    :try_start_0
    iget-object v8, v1, Lcom/android/billingclient/api/e;->g:Lcom/google/android/gms/internal/play_billing/i6;

    .line 58
    .line 59
    const/4 v9, 0x6

    .line 60
    iget-object v10, v1, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 61
    .line 62
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    move-object/from16 v11, p1

    .line 67
    .line 68
    move-object v13, v3

    .line 69
    invoke-interface/range {v8 .. v13}, Lcom/google/android/gms/internal/play_billing/i6;->E(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 70
    .line 71
    .line 72
    move-result-object v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    const-string v9, "getPurchaseHistory()"

    .line 74
    .line 75
    invoke-static {v8, v2, v9}, Lcom/android/billingclient/api/y0;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/x0;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    invoke-virtual {v9}, Lcom/android/billingclient/api/x0;->a()Lcom/android/billingclient/api/h;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    sget-object v11, Lcom/android/billingclient/api/j0;->l:Lcom/android/billingclient/api/h;

    .line 84
    .line 85
    if-eq v10, v11, :cond_1

    .line 86
    .line 87
    iget-object v0, v1, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 88
    .line 89
    invoke-virtual {v9}, Lcom/android/billingclient/api/x0;->b()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-static {v1, v5, v10}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 98
    .line 99
    .line 100
    new-instance v0, Lcom/android/billingclient/api/g0;

    .line 101
    .line 102
    invoke-direct {v0, v10, v4}, Lcom/android/billingclient/api/g0;-><init>(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_2

    .line 106
    .line 107
    :cond_1
    const-string v9, "INAPP_PURCHASE_ITEM_LIST"

    .line 108
    .line 109
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    const-string v10, "INAPP_PURCHASE_DATA_LIST"

    .line 114
    .line 115
    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    const-string v11, "INAPP_DATA_SIGNATURE_LIST"

    .line 120
    .line 121
    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    move v12, v7

    .line 126
    move v13, v12

    .line 127
    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 128
    .line 129
    .line 130
    move-result v14

    .line 131
    if-ge v12, v14, :cond_3

    .line 132
    .line 133
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v14

    .line 137
    check-cast v14, Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v15

    .line 143
    check-cast v15, Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v16

    .line 149
    check-cast v16, Ljava/lang/String;

    .line 150
    .line 151
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    const-string v7, "Purchase record found for sku : "

    .line 156
    .line 157
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-static {v2, v6}, Lcom/google/android/gms/internal/play_billing/b0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :try_start_1
    new-instance v6, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    .line 165
    .line 166
    invoke-direct {v6, v14, v15}, Lcom/android/billingclient/api/PurchaseHistoryRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->e()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    if-eqz v7, :cond_2

    .line 178
    .line 179
    const-string v7, "BUG: empty/null token!"

    .line 180
    .line 181
    invoke-static {v2, v7}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const/4 v13, 0x1

    .line 185
    :cond_2
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    add-int/lit8 v12, v12, 0x1

    .line 189
    .line 190
    const/4 v6, 0x1

    .line 191
    const/4 v7, 0x0

    .line 192
    goto :goto_1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    const-string v3, "Got an exception trying to decode the purchase!"

    .line 195
    .line 196
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    .line 198
    .line 199
    iget-object v0, v1, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 200
    .line 201
    sget-object v1, Lcom/android/billingclient/api/j0;->j:Lcom/android/billingclient/api/h;

    .line 202
    .line 203
    const/16 v2, 0x33

    .line 204
    .line 205
    invoke-static {v2, v5, v1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 210
    .line 211
    .line 212
    new-instance v0, Lcom/android/billingclient/api/g0;

    .line 213
    .line 214
    invoke-direct {v0, v1, v4}, Lcom/android/billingclient/api/g0;-><init>(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 215
    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_3
    if-eqz v13, :cond_4

    .line 219
    .line 220
    iget-object v6, v1, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 221
    .line 222
    const/16 v7, 0x1a

    .line 223
    .line 224
    sget-object v9, Lcom/android/billingclient/api/j0;->j:Lcom/android/billingclient/api/h;

    .line 225
    .line 226
    invoke-static {v7, v5, v9}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-interface {v6, v5}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 231
    .line 232
    .line 233
    :cond_4
    const-string v5, "INAPP_CONTINUATION_TOKEN"

    .line 234
    .line 235
    invoke-virtual {v8, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v12

    .line 239
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    const-string v6, "Continuation token: "

    .line 244
    .line 245
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/play_billing/b0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    if-eqz v5, :cond_5

    .line 257
    .line 258
    new-instance v1, Lcom/android/billingclient/api/g0;

    .line 259
    .line 260
    sget-object v2, Lcom/android/billingclient/api/j0;->l:Lcom/android/billingclient/api/h;

    .line 261
    .line 262
    invoke-direct {v1, v2, v0}, Lcom/android/billingclient/api/g0;-><init>(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 263
    .line 264
    .line 265
    move-object v0, v1

    .line 266
    goto :goto_2

    .line 267
    :cond_5
    const/4 v6, 0x1

    .line 268
    const/4 v7, 0x0

    .line 269
    goto/16 :goto_0

    .line 270
    .line 271
    :catch_1
    move-exception v0

    .line 272
    const-string v3, "Got exception trying to get purchase history, try to reconnect"

    .line 273
    .line 274
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    .line 276
    .line 277
    iget-object v0, v1, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 278
    .line 279
    sget-object v1, Lcom/android/billingclient/api/j0;->m:Lcom/android/billingclient/api/h;

    .line 280
    .line 281
    const/16 v2, 0x3b

    .line 282
    .line 283
    invoke-static {v2, v5, v1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 288
    .line 289
    .line 290
    new-instance v0, Lcom/android/billingclient/api/g0;

    .line 291
    .line 292
    invoke-direct {v0, v1, v4}, Lcom/android/billingclient/api/g0;-><init>(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 293
    .line 294
    .line 295
    :goto_2
    return-object v0
.end method

.method static bridge synthetic m0(Lcom/android/billingclient/api/e;)Lcom/android/billingclient/api/i0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    return-object p0
.end method

.method static bridge synthetic n0(Lcom/android/billingclient/api/e;)Lcom/android/billingclient/api/h;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->a0()Lcom/android/billingclient/api/h;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic o0(Lcom/android/billingclient/api/e;)Lcom/google/android/gms/internal/play_billing/i6;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/e;->g:Lcom/google/android/gms/internal/play_billing/i6;

    return-object p0
.end method

.method private s(Landroid/content/Context;Lc2/o;Lcom/android/billingclient/api/n0;Lc2/c;Ljava/lang/String;Lcom/android/billingclient/api/i0;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/k5;->E()Lcom/google/android/gms/internal/play_billing/j5;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/play_billing/j5;->m(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/j5;

    .line 12
    .line 13
    .line 14
    iget-object p5, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p5

    .line 20
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/play_billing/j5;->j(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/j5;

    .line 21
    .line 22
    .line 23
    if-eqz p6, :cond_0

    .line 24
    .line 25
    iput-object p6, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p5, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/y1;->c()Lcom/google/android/gms/internal/play_billing/b2;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/google/android/gms/internal/play_billing/k5;

    .line 35
    .line 36
    new-instance p6, Lcom/android/billingclient/api/k0;

    .line 37
    .line 38
    invoke-direct {p6, p5, p1}, Lcom/android/billingclient/api/k0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/k5;)V

    .line 39
    .line 40
    .line 41
    iput-object p6, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 42
    .line 43
    :goto_0
    if-nez p2, :cond_1

    .line 44
    .line 45
    const-string p1, "BillingClient"

    .line 46
    .line 47
    const-string p5, "Billing client should have a valid listener but the provided is null."

    .line 48
    .line 49
    invoke-static {p1, p5}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    new-instance p1, Lcom/android/billingclient/api/b1;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    const/4 v5, 0x0

    .line 58
    iget-object v6, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 59
    .line 60
    move-object v0, p1

    .line 61
    move-object v2, p2

    .line 62
    move-object v4, p4

    .line 63
    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/b1;-><init>(Landroid/content/Context;Lc2/o;Lc2/l0;Lc2/c;Lc2/s;Lcom/android/billingclient/api/i0;)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lcom/android/billingclient/api/e;->d:Lcom/android/billingclient/api/b1;

    .line 67
    .line 68
    iput-object p3, p0, Lcom/android/billingclient/api/e;->z:Lcom/android/billingclient/api/n0;

    .line 69
    .line 70
    if-eqz p4, :cond_2

    .line 71
    .line 72
    const/4 p1, 0x1

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const/4 p1, 0x0

    .line 75
    :goto_1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->A:Z

    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method private t(Landroid/content/Context;Lc2/o;Lcom/android/billingclient/api/n0;Lc2/s;Ljava/lang/String;Lcom/android/billingclient/api/i0;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/k5;->E()Lcom/google/android/gms/internal/play_billing/j5;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/play_billing/j5;->m(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/j5;

    .line 12
    .line 13
    .line 14
    iget-object p5, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p5

    .line 20
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/play_billing/j5;->j(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/j5;

    .line 21
    .line 22
    .line 23
    if-eqz p6, :cond_0

    .line 24
    .line 25
    iput-object p6, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p5, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/y1;->c()Lcom/google/android/gms/internal/play_billing/b2;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/google/android/gms/internal/play_billing/k5;

    .line 35
    .line 36
    new-instance p6, Lcom/android/billingclient/api/k0;

    .line 37
    .line 38
    invoke-direct {p6, p5, p1}, Lcom/android/billingclient/api/k0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/k5;)V

    .line 39
    .line 40
    .line 41
    iput-object p6, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 42
    .line 43
    :goto_0
    if-nez p2, :cond_1

    .line 44
    .line 45
    const-string p1, "BillingClient"

    .line 46
    .line 47
    const-string p5, "Billing client should have a valid listener but the provided is null."

    .line 48
    .line 49
    invoke-static {p1, p5}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    new-instance p1, Lcom/android/billingclient/api/b1;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    const/4 v4, 0x0

    .line 58
    iget-object v6, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 59
    .line 60
    move-object v0, p1

    .line 61
    move-object v2, p2

    .line 62
    move-object v5, p4

    .line 63
    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/b1;-><init>(Landroid/content/Context;Lc2/o;Lc2/l0;Lc2/c;Lc2/s;Lcom/android/billingclient/api/i0;)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lcom/android/billingclient/api/e;->d:Lcom/android/billingclient/api/b1;

    .line 67
    .line 68
    iput-object p3, p0, Lcom/android/billingclient/api/e;->z:Lcom/android/billingclient/api/n0;

    .line 69
    .line 70
    if-eqz p4, :cond_2

    .line 71
    .line 72
    const/4 p1, 0x1

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const/4 p1, 0x0

    .line 75
    :goto_1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->A:Z

    .line 76
    .line 77
    return-void
.end method

.method static bridge synthetic u(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->p:Z

    return-void
.end method

.method static bridge synthetic v(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->q:Z

    return-void
.end method

.method static bridge synthetic w(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->r:Z

    return-void
.end method

.method static bridge synthetic x(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->s:Z

    return-void
.end method

.method static bridge synthetic x0(Lcom/android/billingclient/api/e;Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;
    .locals 6

    .line 1
    const-wide/16 v2, 0x7530

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/billingclient/api/e;->c0(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic y(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->t:Z

    return-void
.end method

.method static bridge synthetic y0(Lcom/android/billingclient/api/e;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/billingclient/api/e;->a:I

    return-void
.end method

.method static bridge synthetic z(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->u:Z

    return-void
.end method

.method static bridge synthetic z0(Lcom/android/billingclient/api/e;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/billingclient/api/e;->k:I

    return-void
.end method


# virtual methods
.method final synthetic K(Lc2/b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 2
    .line 3
    sget-object v1, Lcom/android/billingclient/api/j0;->n:Lcom/android/billingclient/api/h;

    .line 4
    .line 5
    const/16 v2, 0x18

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v1}, Lc2/b;->a(Lcom/android/billingclient/api/h;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method final synthetic L(Lcom/android/billingclient/api/h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/e;->d:Lcom/android/billingclient/api/b1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/billingclient/api/b1;->d()Lc2/o;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/billingclient/api/e;->d:Lcom/android/billingclient/api/b1;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/billingclient/api/b1;->d()Lc2/o;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-interface {v0, p1, v1}, Lc2/o;->onPurchasesUpdated(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string p1, "BillingClient"

    .line 21
    .line 22
    const-string v0, "No valid listener is set in BroadcastManager"

    .line 23
    .line 24
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method final synthetic M(Lc2/j;Lc2/i;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 2
    .line 3
    sget-object v1, Lcom/android/billingclient/api/j0;->n:Lcom/android/billingclient/api/h;

    .line 4
    .line 5
    const/16 v2, 0x18

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Lc2/i;->a()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-interface {p1, v1, p2}, Lc2/j;->a(Lcom/android/billingclient/api/h;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method final synthetic N(Lc2/f;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 2
    .line 3
    sget-object v1, Lcom/android/billingclient/api/j0;->n:Lcom/android/billingclient/api/h;

    .line 4
    .line 5
    const/16 v2, 0x18

    .line 6
    .line 7
    const/16 v3, 0xf

    .line 8
    .line 9
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-interface {p1, v1, v0}, Lc2/f;->a(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/b;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method final synthetic O(Lc2/h;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 2
    .line 3
    sget-object v1, Lcom/android/billingclient/api/j0;->n:Lcom/android/billingclient/api/h;

    .line 4
    .line 5
    const/16 v2, 0x18

    .line 6
    .line 7
    const/16 v3, 0xd

    .line 8
    .line 9
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-interface {p1, v1, v0}, Lc2/h;->a(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/f;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method final synthetic P(Lc2/d;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 2
    .line 3
    sget-object v1, Lcom/android/billingclient/api/j0;->n:Lcom/android/billingclient/api/h;

    .line 4
    .line 5
    const/16 v2, 0x18

    .line 6
    .line 7
    const/16 v3, 0xe

    .line 8
    .line 9
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v1}, Lc2/d;->a(Lcom/android/billingclient/api/h;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method final synthetic Q(Lc2/l;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 2
    .line 3
    sget-object v1, Lcom/android/billingclient/api/j0;->n:Lcom/android/billingclient/api/h;

    .line 4
    .line 5
    const/16 v2, 0x18

    .line 6
    .line 7
    const/4 v3, 0x7

    .line 8
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v1, v0}, Lc2/l;->onProductDetailsResponse(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method final synthetic R(Lc2/m;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 2
    .line 3
    sget-object v1, Lcom/android/billingclient/api/j0;->n:Lcom/android/billingclient/api/h;

    .line 4
    .line 5
    const/16 v2, 0x18

    .line 6
    .line 7
    const/16 v3, 0xb

    .line 8
    .line 9
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-interface {p1, v1, v0}, Lc2/m;->onPurchaseHistoryResponse(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method final synthetic T(Lc2/n;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 2
    .line 3
    sget-object v1, Lcom/android/billingclient/api/j0;->n:Lcom/android/billingclient/api/h;

    .line 4
    .line 5
    const/16 v2, 0x18

    .line 6
    .line 7
    const/16 v3, 0x9

    .line 8
    .line 9
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/j;->s()Lcom/google/android/gms/internal/play_billing/j;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {p1, v1, v0}, Lc2/n;->onQueryPurchasesResponse(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method final synthetic U(Lc2/r;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 2
    .line 3
    sget-object v1, Lcom/android/billingclient/api/j0;->n:Lcom/android/billingclient/api/h;

    .line 4
    .line 5
    const/16 v2, 0x18

    .line 6
    .line 7
    const/16 v3, 0x8

    .line 8
    .line 9
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-interface {p1, v1, v0}, Lc2/r;->a(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method final synthetic V(Lc2/e;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 2
    .line 3
    sget-object v1, Lcom/android/billingclient/api/j0;->n:Lcom/android/billingclient/api/h;

    .line 4
    .line 5
    const/16 v2, 0x18

    .line 6
    .line 7
    const/16 v3, 0x10

    .line 8
    .line 9
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v1}, Lc2/e;->a(Lcom/android/billingclient/api/h;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final a(Lc2/a;Lc2/b;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/e;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 9
    .line 10
    sget-object v0, Lcom/android/billingclient/api/j0;->m:Lcom/android/billingclient/api/h;

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-static {v2, v1, v0}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, v0}, Lc2/b;->a(Lcom/android/billingclient/api/h;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {p1}, Lc2/a;->a()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const-string p1, "BillingClient"

    .line 35
    .line 36
    const-string v0, "Please provide a valid purchase token."

    .line 37
    .line 38
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 42
    .line 43
    sget-object v0, Lcom/android/billingclient/api/j0;->i:Lcom/android/billingclient/api/h;

    .line 44
    .line 45
    const/16 v2, 0x1a

    .line 46
    .line 47
    invoke-static {v2, v1, v0}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p2, v0}, Lc2/b;->a(Lcom/android/billingclient/api/h;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    iget-boolean v0, p0, Lcom/android/billingclient/api/e;->n:Z

    .line 59
    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 63
    .line 64
    sget-object v0, Lcom/android/billingclient/api/j0;->b:Lcom/android/billingclient/api/h;

    .line 65
    .line 66
    const/16 v2, 0x1b

    .line 67
    .line 68
    invoke-static {v2, v1, v0}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p2, v0}, Lc2/b;->a(Lcom/android/billingclient/api/h;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    new-instance v3, Lcom/android/billingclient/api/g1;

    .line 80
    .line 81
    invoke-direct {v3, p0, p1, p2}, Lcom/android/billingclient/api/g1;-><init>(Lcom/android/billingclient/api/e;Lc2/a;Lc2/b;)V

    .line 82
    .line 83
    .line 84
    const-wide/16 v4, 0x7530

    .line 85
    .line 86
    new-instance v6, Lcom/android/billingclient/api/h1;

    .line 87
    .line 88
    invoke-direct {v6, p0, p2}, Lcom/android/billingclient/api/h1;-><init>(Lcom/android/billingclient/api/e;Lc2/b;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->Y()Landroid/os/Handler;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    move-object v2, p0

    .line 96
    invoke-direct/range {v2 .. v7}, Lcom/android/billingclient/api/e;->c0(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-nez p1, :cond_3

    .line 101
    .line 102
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->a0()Lcom/android/billingclient/api/h;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iget-object v0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 107
    .line 108
    const/16 v2, 0x19

    .line 109
    .line 110
    invoke-static {v2, v1, p1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {p2, p1}, Lc2/b;->a(Lcom/android/billingclient/api/h;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    return-void
.end method

.method public final b(Lc2/i;Lc2/j;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/e;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 9
    .line 10
    sget-object v2, Lcom/android/billingclient/api/j0;->m:Lcom/android/billingclient/api/h;

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    invoke-static {v3, v1, v2}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lc2/i;->a()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p2, v2, p1}, Lc2/j;->a(Lcom/android/billingclient/api/h;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    new-instance v4, Lcom/android/billingclient/api/p;

    .line 29
    .line 30
    invoke-direct {v4, p0, p1, p2}, Lcom/android/billingclient/api/p;-><init>(Lcom/android/billingclient/api/e;Lc2/i;Lc2/j;)V

    .line 31
    .line 32
    .line 33
    const-wide/16 v5, 0x7530

    .line 34
    .line 35
    new-instance v7, Lcom/android/billingclient/api/q;

    .line 36
    .line 37
    invoke-direct {v7, p0, p2, p1}, Lcom/android/billingclient/api/q;-><init>(Lcom/android/billingclient/api/e;Lc2/j;Lc2/i;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->Y()Landroid/os/Handler;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    move-object v3, p0

    .line 45
    invoke-direct/range {v3 .. v8}, Lcom/android/billingclient/api/e;->c0(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->a0()Lcom/android/billingclient/api/h;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v2, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 56
    .line 57
    const/16 v3, 0x19

    .line 58
    .line 59
    invoke-static {v3, v1, v0}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-interface {v2, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lc2/i;->a()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-interface {p2, v0, p1}, Lc2/j;->a(Lcom/android/billingclient/api/h;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void
.end method

.method public c(Lc2/f;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/e;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0xf

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 11
    .line 12
    sget-object v3, Lcom/android/billingclient/api/j0;->m:Lcom/android/billingclient/api/h;

    .line 13
    .line 14
    const/4 v4, 0x2

    .line 15
    invoke-static {v4, v2, v3}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v3, v1}, Lc2/f;->a(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/b;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/e;->x:Z

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const-string v0, "BillingClient"

    .line 31
    .line 32
    const-string v3, "Current client doesn\'t support alternative billing only."

    .line 33
    .line 34
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 38
    .line 39
    sget-object v3, Lcom/android/billingclient/api/j0;->E:Lcom/android/billingclient/api/h;

    .line 40
    .line 41
    const/16 v4, 0x42

    .line 42
    .line 43
    invoke-static {v4, v2, v3}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, v3, v1}, Lc2/f;->a(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/b;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    new-instance v5, Lcom/android/billingclient/api/k1;

    .line 55
    .line 56
    invoke-direct {v5, p0, p1}, Lcom/android/billingclient/api/k1;-><init>(Lcom/android/billingclient/api/e;Lc2/f;)V

    .line 57
    .line 58
    .line 59
    const-wide/16 v6, 0x7530

    .line 60
    .line 61
    new-instance v8, Lcom/android/billingclient/api/l1;

    .line 62
    .line 63
    invoke-direct {v8, p0, p1}, Lcom/android/billingclient/api/l1;-><init>(Lcom/android/billingclient/api/e;Lc2/f;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->Y()Landroid/os/Handler;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    move-object v4, p0

    .line 71
    invoke-direct/range {v4 .. v9}, Lcom/android/billingclient/api/e;->c0(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->a0()Lcom/android/billingclient/api/h;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object v3, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 82
    .line 83
    const/16 v4, 0x19

    .line 84
    .line 85
    invoke-static {v4, v2, v0}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-interface {v3, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v0, v1}, Lc2/f;->a(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/b;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    const-string v0, "BillingClient"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 4
    .line 5
    const/16 v2, 0xc

    .line 6
    .line 7
    invoke-static {v2}, Lcom/android/billingclient/api/h0;->d(I)Lcom/google/android/gms/internal/play_billing/t4;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v1, v2}, Lcom/android/billingclient/api/i0;->c(Lcom/google/android/gms/internal/play_billing/t4;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    :try_start_0
    iget-object v2, p0, Lcom/android/billingclient/api/e;->d:Lcom/android/billingclient/api/b1;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/billingclient/api/e;->d:Lcom/android/billingclient/api/b1;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/android/billingclient/api/b1;->f()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v2, p0, Lcom/android/billingclient/api/e;->h:Lcom/android/billingclient/api/b0;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/billingclient/api/e;->h:Lcom/android/billingclient/api/b0;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/android/billingclient/api/b0;->c()V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v2, p0, Lcom/android/billingclient/api/e;->h:Lcom/android/billingclient/api/b0;

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/billingclient/api/e;->g:Lcom/google/android/gms/internal/play_billing/i6;

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    const-string v2, "Unbinding from service."

    .line 43
    .line 44
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/b0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 48
    .line 49
    iget-object v4, p0, Lcom/android/billingclient/api/e;->h:Lcom/android/billingclient/api/b0;

    .line 50
    .line 51
    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 52
    .line 53
    .line 54
    iput-object v3, p0, Lcom/android/billingclient/api/e;->h:Lcom/android/billingclient/api/b0;

    .line 55
    .line 56
    :cond_2
    iput-object v3, p0, Lcom/android/billingclient/api/e;->g:Lcom/google/android/gms/internal/play_billing/i6;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/android/billingclient/api/e;->B:Ljava/util/concurrent/ExecutorService;

    .line 59
    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    iput-object v3, p0, Lcom/android/billingclient/api/e;->B:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    goto :goto_1

    .line 70
    :catch_0
    move-exception v2

    .line 71
    :try_start_1
    const-string v3, "There was an exception while ending connection!"

    .line 72
    .line 73
    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_0
    iput v1, p0, Lcom/android/billingclient/api/e;->a:I

    .line 77
    .line 78
    return-void

    .line 79
    :goto_1
    iput v1, p0, Lcom/android/billingclient/api/e;->a:I

    .line 80
    .line 81
    throw v0
.end method

.method public e(Lc2/k;Lc2/h;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/e;->h()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const-string v0, "BillingClient"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/16 v2, 0xd

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const-string p1, "Service disconnected."

    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 18
    .line 19
    sget-object v0, Lcom/android/billingclient/api/j0;->m:Lcom/android/billingclient/api/h;

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    invoke-static {v3, v2, v0}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {p1, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p2, v0, v1}, Lc2/h;->a(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/f;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-boolean p1, p0, Lcom/android/billingclient/api/e;->u:Z

    .line 34
    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    const-string p1, "Current client doesn\'t support get billing config."

    .line 38
    .line 39
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 43
    .line 44
    sget-object v0, Lcom/android/billingclient/api/j0;->A:Lcom/android/billingclient/api/h;

    .line 45
    .line 46
    const/16 v3, 0x20

    .line 47
    .line 48
    invoke-static {v3, v2, v0}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-interface {p1, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p2, v0, v1}, Lc2/h;->a(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/f;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/android/billingclient/api/e;->b:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v0, Landroid/os/Bundle;

    .line 62
    .line 63
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v3, "playBillingLibraryVersion"

    .line 67
    .line 68
    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v5, Lcom/android/billingclient/api/i1;

    .line 72
    .line 73
    invoke-direct {v5, p0, v0, p2}, Lcom/android/billingclient/api/i1;-><init>(Lcom/android/billingclient/api/e;Landroid/os/Bundle;Lc2/h;)V

    .line 74
    .line 75
    .line 76
    const-wide/16 v6, 0x7530

    .line 77
    .line 78
    new-instance v8, Lcom/android/billingclient/api/j1;

    .line 79
    .line 80
    invoke-direct {v8, p0, p2}, Lcom/android/billingclient/api/j1;-><init>(Lcom/android/billingclient/api/e;Lc2/h;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->Y()Landroid/os/Handler;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    move-object v4, p0

    .line 88
    invoke-direct/range {v4 .. v9}, Lcom/android/billingclient/api/e;->c0(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    if-nez p1, :cond_2

    .line 93
    .line 94
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->a0()Lcom/android/billingclient/api/h;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iget-object v0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 99
    .line 100
    const/16 v3, 0x19

    .line 101
    .line 102
    invoke-static {v3, v2, p1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {p2, p1, v1}, Lc2/h;->a(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/f;)V

    .line 110
    .line 111
    .line 112
    :cond_2
    return-void
.end method

.method public f(Lc2/d;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/e;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xe

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 10
    .line 11
    sget-object v2, Lcom/android/billingclient/api/j0;->m:Lcom/android/billingclient/api/h;

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    invoke-static {v3, v1, v2}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v2}, Lc2/d;->a(Lcom/android/billingclient/api/h;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/e;->x:Z

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    const-string v0, "BillingClient"

    .line 30
    .line 31
    const-string v2, "Current client doesn\'t support alternative billing only."

    .line 32
    .line 33
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 37
    .line 38
    sget-object v2, Lcom/android/billingclient/api/j0;->E:Lcom/android/billingclient/api/h;

    .line 39
    .line 40
    const/16 v3, 0x42

    .line 41
    .line 42
    invoke-static {v3, v1, v2}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v2}, Lc2/d;->a(Lcom/android/billingclient/api/h;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    new-instance v4, Lcom/android/billingclient/api/n;

    .line 54
    .line 55
    invoke-direct {v4, p0, p1}, Lcom/android/billingclient/api/n;-><init>(Lcom/android/billingclient/api/e;Lc2/d;)V

    .line 56
    .line 57
    .line 58
    const-wide/16 v5, 0x7530

    .line 59
    .line 60
    new-instance v7, Lcom/android/billingclient/api/o;

    .line 61
    .line 62
    invoke-direct {v7, p0, p1}, Lcom/android/billingclient/api/o;-><init>(Lcom/android/billingclient/api/e;Lc2/d;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->Y()Landroid/os/Handler;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    move-object v3, p0

    .line 70
    invoke-direct/range {v3 .. v8}, Lcom/android/billingclient/api/e;->c0(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-nez v0, :cond_2

    .line 75
    .line 76
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->a0()Lcom/android/billingclient/api/h;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v2, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 81
    .line 82
    const/16 v3, 0x19

    .line 83
    .line 84
    invoke-static {v3, v1, v0}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-interface {v2, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v0}, Lc2/d;->a(Lcom/android/billingclient/api/h;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    return-void
.end method

.method public final g(Ljava/lang/String;)Lcom/android/billingclient/api/h;
    .locals 14

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/e;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x5

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget-object p1, Lcom/android/billingclient/api/j0;->m:Lcom/android/billingclient/api/h;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/billingclient/api/h;->b()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 18
    .line 19
    invoke-static {v1, v2, p1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/android/billingclient/api/h0;->d(I)Lcom/google/android/gms/internal/play_billing/t4;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/i0;->c(Lcom/google/android/gms/internal/play_billing/t4;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-object p1

    .line 37
    :cond_1
    sget-object v0, Lcom/android/billingclient/api/j0;->a:Lcom/android/billingclient/api/h;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/16 v3, 0xd

    .line 44
    .line 45
    const/16 v4, 0xc

    .line 46
    .line 47
    const/16 v5, 0xb

    .line 48
    .line 49
    const/16 v6, 0x8

    .line 50
    .line 51
    const/4 v7, 0x7

    .line 52
    const/4 v8, 0x6

    .line 53
    const/4 v9, 0x3

    .line 54
    const/4 v10, 0x4

    .line 55
    const/4 v11, 0x1

    .line 56
    const/16 v12, 0xa

    .line 57
    .line 58
    const/16 v13, 0x9

    .line 59
    .line 60
    sparse-switch v0, :sswitch_data_0

    .line 61
    .line 62
    .line 63
    goto/16 :goto_1

    .line 64
    .line 65
    :sswitch_0
    const-string v0, "subscriptions"

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    goto/16 :goto_2

    .line 75
    .line 76
    :sswitch_1
    const-string v0, "priceChangeConfirmation"

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    move v0, v1

    .line 85
    goto/16 :goto_2

    .line 86
    .line 87
    :sswitch_2
    const-string v0, "kkk"

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    move v0, v3

    .line 96
    goto/16 :goto_2

    .line 97
    .line 98
    :sswitch_3
    const-string v0, "jjj"

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    move v0, v4

    .line 107
    goto/16 :goto_2

    .line 108
    .line 109
    :sswitch_4
    const-string v0, "iii"

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_2

    .line 116
    .line 117
    move v0, v5

    .line 118
    goto/16 :goto_2

    .line 119
    .line 120
    :sswitch_5
    const-string v0, "hhh"

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_2

    .line 127
    .line 128
    move v0, v12

    .line 129
    goto :goto_2

    .line 130
    :sswitch_6
    const-string v0, "ggg"

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_2

    .line 137
    .line 138
    move v0, v13

    .line 139
    goto :goto_2

    .line 140
    :sswitch_7
    const-string v0, "fff"

    .line 141
    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_2

    .line 147
    .line 148
    move v0, v6

    .line 149
    goto :goto_2

    .line 150
    :sswitch_8
    const-string v0, "eee"

    .line 151
    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_2

    .line 157
    .line 158
    move v0, v7

    .line 159
    goto :goto_2

    .line 160
    :sswitch_9
    const-string v0, "ddd"

    .line 161
    .line 162
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_2

    .line 167
    .line 168
    move v0, v2

    .line 169
    goto :goto_2

    .line 170
    :sswitch_a
    const-string v0, "ccc"

    .line 171
    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_2

    .line 177
    .line 178
    move v0, v8

    .line 179
    goto :goto_2

    .line 180
    :sswitch_b
    const-string v0, "bbb"

    .line 181
    .line 182
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_2

    .line 187
    .line 188
    move v0, v9

    .line 189
    goto :goto_2

    .line 190
    :sswitch_c
    const-string v0, "aaa"

    .line 191
    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_2

    .line 197
    .line 198
    move v0, v10

    .line 199
    goto :goto_2

    .line 200
    :sswitch_d
    const-string v0, "subscriptionsUpdate"

    .line 201
    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_2

    .line 207
    .line 208
    move v0, v11

    .line 209
    goto :goto_2

    .line 210
    :cond_2
    :goto_1
    const/4 v0, -0x1

    .line 211
    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 212
    .line 213
    .line 214
    const-string v0, "BillingClient"

    .line 215
    .line 216
    const-string v1, "Unsupported feature: "

    .line 217
    .line 218
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    sget-object p1, Lcom/android/billingclient/api/j0;->z:Lcom/android/billingclient/api/h;

    .line 226
    .line 227
    const/16 v0, 0x22

    .line 228
    .line 229
    invoke-direct {p0, p1, v0, v11}, Lcom/android/billingclient/api/e;->f0(Lcom/android/billingclient/api/h;II)V

    .line 230
    .line 231
    .line 232
    return-object p1

    .line 233
    :pswitch_0
    iget-boolean p1, p0, Lcom/android/billingclient/api/e;->y:Z

    .line 234
    .line 235
    if-eqz p1, :cond_3

    .line 236
    .line 237
    sget-object p1, Lcom/android/billingclient/api/j0;->l:Lcom/android/billingclient/api/h;

    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_3
    sget-object p1, Lcom/android/billingclient/api/j0;->y:Lcom/android/billingclient/api/h;

    .line 241
    .line 242
    :goto_3
    const/16 v0, 0x67

    .line 243
    .line 244
    const/16 v1, 0x12

    .line 245
    .line 246
    invoke-direct {p0, p1, v0, v1}, Lcom/android/billingclient/api/e;->f0(Lcom/android/billingclient/api/h;II)V

    .line 247
    .line 248
    .line 249
    return-object p1

    .line 250
    :pswitch_1
    iget-boolean p1, p0, Lcom/android/billingclient/api/e;->x:Z

    .line 251
    .line 252
    if-eqz p1, :cond_4

    .line 253
    .line 254
    sget-object p1, Lcom/android/billingclient/api/j0;->l:Lcom/android/billingclient/api/h;

    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_4
    sget-object p1, Lcom/android/billingclient/api/j0;->E:Lcom/android/billingclient/api/h;

    .line 258
    .line 259
    :goto_4
    const/16 v0, 0x42

    .line 260
    .line 261
    const/16 v1, 0xe

    .line 262
    .line 263
    invoke-direct {p0, p1, v0, v1}, Lcom/android/billingclient/api/e;->f0(Lcom/android/billingclient/api/h;II)V

    .line 264
    .line 265
    .line 266
    return-object p1

    .line 267
    :pswitch_2
    iget-boolean p1, p0, Lcom/android/billingclient/api/e;->w:Z

    .line 268
    .line 269
    if-eqz p1, :cond_5

    .line 270
    .line 271
    sget-object p1, Lcom/android/billingclient/api/j0;->l:Lcom/android/billingclient/api/h;

    .line 272
    .line 273
    goto :goto_5

    .line 274
    :cond_5
    sget-object p1, Lcom/android/billingclient/api/j0;->D:Lcom/android/billingclient/api/h;

    .line 275
    .line 276
    :goto_5
    const/16 v0, 0x3c

    .line 277
    .line 278
    invoke-direct {p0, p1, v0, v3}, Lcom/android/billingclient/api/e;->f0(Lcom/android/billingclient/api/h;II)V

    .line 279
    .line 280
    .line 281
    return-object p1

    .line 282
    :pswitch_3
    iget-boolean p1, p0, Lcom/android/billingclient/api/e;->u:Z

    .line 283
    .line 284
    if-eqz p1, :cond_6

    .line 285
    .line 286
    sget-object p1, Lcom/android/billingclient/api/j0;->l:Lcom/android/billingclient/api/h;

    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_6
    sget-object p1, Lcom/android/billingclient/api/j0;->B:Lcom/android/billingclient/api/h;

    .line 290
    .line 291
    :goto_6
    const/16 v0, 0x21

    .line 292
    .line 293
    invoke-direct {p0, p1, v0, v4}, Lcom/android/billingclient/api/e;->f0(Lcom/android/billingclient/api/h;II)V

    .line 294
    .line 295
    .line 296
    return-object p1

    .line 297
    :pswitch_4
    iget-boolean p1, p0, Lcom/android/billingclient/api/e;->u:Z

    .line 298
    .line 299
    if-eqz p1, :cond_7

    .line 300
    .line 301
    sget-object p1, Lcom/android/billingclient/api/j0;->l:Lcom/android/billingclient/api/h;

    .line 302
    .line 303
    goto :goto_7

    .line 304
    :cond_7
    sget-object p1, Lcom/android/billingclient/api/j0;->A:Lcom/android/billingclient/api/h;

    .line 305
    .line 306
    :goto_7
    const/16 v0, 0x20

    .line 307
    .line 308
    invoke-direct {p0, p1, v0, v5}, Lcom/android/billingclient/api/e;->f0(Lcom/android/billingclient/api/h;II)V

    .line 309
    .line 310
    .line 311
    return-object p1

    .line 312
    :pswitch_5
    iget-boolean p1, p0, Lcom/android/billingclient/api/e;->t:Z

    .line 313
    .line 314
    if-eqz p1, :cond_8

    .line 315
    .line 316
    sget-object p1, Lcom/android/billingclient/api/j0;->l:Lcom/android/billingclient/api/h;

    .line 317
    .line 318
    goto :goto_8

    .line 319
    :cond_8
    sget-object p1, Lcom/android/billingclient/api/j0;->v:Lcom/android/billingclient/api/h;

    .line 320
    .line 321
    :goto_8
    const/16 v0, 0x14

    .line 322
    .line 323
    invoke-direct {p0, p1, v0, v12}, Lcom/android/billingclient/api/e;->f0(Lcom/android/billingclient/api/h;II)V

    .line 324
    .line 325
    .line 326
    return-object p1

    .line 327
    :pswitch_6
    iget-boolean p1, p0, Lcom/android/billingclient/api/e;->s:Z

    .line 328
    .line 329
    if-eqz p1, :cond_9

    .line 330
    .line 331
    sget-object p1, Lcom/android/billingclient/api/j0;->l:Lcom/android/billingclient/api/h;

    .line 332
    .line 333
    goto :goto_9

    .line 334
    :cond_9
    sget-object p1, Lcom/android/billingclient/api/j0;->t:Lcom/android/billingclient/api/h;

    .line 335
    .line 336
    :goto_9
    const/16 v0, 0x3d

    .line 337
    .line 338
    invoke-direct {p0, p1, v0, v13}, Lcom/android/billingclient/api/e;->f0(Lcom/android/billingclient/api/h;II)V

    .line 339
    .line 340
    .line 341
    return-object p1

    .line 342
    :pswitch_7
    iget-boolean p1, p0, Lcom/android/billingclient/api/e;->s:Z

    .line 343
    .line 344
    if-eqz p1, :cond_a

    .line 345
    .line 346
    sget-object p1, Lcom/android/billingclient/api/j0;->l:Lcom/android/billingclient/api/h;

    .line 347
    .line 348
    goto :goto_a

    .line 349
    :cond_a
    sget-object p1, Lcom/android/billingclient/api/j0;->t:Lcom/android/billingclient/api/h;

    .line 350
    .line 351
    :goto_a
    const/16 v0, 0x13

    .line 352
    .line 353
    invoke-direct {p0, p1, v0, v6}, Lcom/android/billingclient/api/e;->f0(Lcom/android/billingclient/api/h;II)V

    .line 354
    .line 355
    .line 356
    return-object p1

    .line 357
    :pswitch_8
    iget-boolean p1, p0, Lcom/android/billingclient/api/e;->q:Z

    .line 358
    .line 359
    if-eqz p1, :cond_b

    .line 360
    .line 361
    sget-object p1, Lcom/android/billingclient/api/j0;->l:Lcom/android/billingclient/api/h;

    .line 362
    .line 363
    goto :goto_b

    .line 364
    :cond_b
    sget-object p1, Lcom/android/billingclient/api/j0;->u:Lcom/android/billingclient/api/h;

    .line 365
    .line 366
    :goto_b
    const/16 v0, 0x15

    .line 367
    .line 368
    invoke-direct {p0, p1, v0, v7}, Lcom/android/billingclient/api/e;->f0(Lcom/android/billingclient/api/h;II)V

    .line 369
    .line 370
    .line 371
    return-object p1

    .line 372
    :pswitch_9
    iget-boolean p1, p0, Lcom/android/billingclient/api/e;->r:Z

    .line 373
    .line 374
    if-eqz p1, :cond_c

    .line 375
    .line 376
    sget-object p1, Lcom/android/billingclient/api/j0;->l:Lcom/android/billingclient/api/h;

    .line 377
    .line 378
    goto :goto_c

    .line 379
    :cond_c
    sget-object p1, Lcom/android/billingclient/api/j0;->s:Lcom/android/billingclient/api/h;

    .line 380
    .line 381
    :goto_c
    const/16 v0, 0x1f

    .line 382
    .line 383
    invoke-direct {p0, p1, v0, v8}, Lcom/android/billingclient/api/e;->f0(Lcom/android/billingclient/api/h;II)V

    .line 384
    .line 385
    .line 386
    return-object p1

    .line 387
    :pswitch_a
    iget-boolean p1, p0, Lcom/android/billingclient/api/e;->p:Z

    .line 388
    .line 389
    if-eqz p1, :cond_d

    .line 390
    .line 391
    sget-object p1, Lcom/android/billingclient/api/j0;->l:Lcom/android/billingclient/api/h;

    .line 392
    .line 393
    goto :goto_d

    .line 394
    :cond_d
    sget-object p1, Lcom/android/billingclient/api/j0;->w:Lcom/android/billingclient/api/h;

    .line 395
    .line 396
    :goto_d
    const/16 v0, 0x1e

    .line 397
    .line 398
    invoke-direct {p0, p1, v0, v2}, Lcom/android/billingclient/api/e;->f0(Lcom/android/billingclient/api/h;II)V

    .line 399
    .line 400
    .line 401
    return-object p1

    .line 402
    :pswitch_b
    iget-boolean p1, p0, Lcom/android/billingclient/api/e;->m:Z

    .line 403
    .line 404
    if-eqz p1, :cond_e

    .line 405
    .line 406
    sget-object p1, Lcom/android/billingclient/api/j0;->l:Lcom/android/billingclient/api/h;

    .line 407
    .line 408
    goto :goto_e

    .line 409
    :cond_e
    sget-object p1, Lcom/android/billingclient/api/j0;->r:Lcom/android/billingclient/api/h;

    .line 410
    .line 411
    :goto_e
    const/16 v0, 0x23

    .line 412
    .line 413
    invoke-direct {p0, p1, v0, v10}, Lcom/android/billingclient/api/e;->f0(Lcom/android/billingclient/api/h;II)V

    .line 414
    .line 415
    .line 416
    return-object p1

    .line 417
    :pswitch_c
    iget-boolean p1, p0, Lcom/android/billingclient/api/e;->j:Z

    .line 418
    .line 419
    if-eqz p1, :cond_f

    .line 420
    .line 421
    sget-object p1, Lcom/android/billingclient/api/j0;->l:Lcom/android/billingclient/api/h;

    .line 422
    .line 423
    goto :goto_f

    .line 424
    :cond_f
    sget-object p1, Lcom/android/billingclient/api/j0;->p:Lcom/android/billingclient/api/h;

    .line 425
    .line 426
    :goto_f
    invoke-direct {p0, p1, v12, v9}, Lcom/android/billingclient/api/e;->f0(Lcom/android/billingclient/api/h;II)V

    .line 427
    .line 428
    .line 429
    return-object p1

    .line 430
    :pswitch_d
    iget-boolean p1, p0, Lcom/android/billingclient/api/e;->i:Z

    .line 431
    .line 432
    if-eqz p1, :cond_10

    .line 433
    .line 434
    sget-object p1, Lcom/android/billingclient/api/j0;->l:Lcom/android/billingclient/api/h;

    .line 435
    .line 436
    goto :goto_10

    .line 437
    :cond_10
    sget-object p1, Lcom/android/billingclient/api/j0;->o:Lcom/android/billingclient/api/h;

    .line 438
    .line 439
    :goto_10
    invoke-direct {p0, p1, v13, v1}, Lcom/android/billingclient/api/e;->f0(Lcom/android/billingclient/api/h;II)V

    .line 440
    .line 441
    .line 442
    return-object p1

    .line 443
    :sswitch_data_0
    .sparse-switch
        -0x1928a0a1 -> :sswitch_d
        0x17841 -> :sswitch_c
        0x17c22 -> :sswitch_b
        0x18003 -> :sswitch_a
        0x183e4 -> :sswitch_9
        0x187c5 -> :sswitch_8
        0x18ba6 -> :sswitch_7
        0x18f87 -> :sswitch_6
        0x19368 -> :sswitch_5
        0x19749 -> :sswitch_4
        0x19b2a -> :sswitch_3
        0x19f0b -> :sswitch_2
        0xc5ff92e -> :sswitch_1
        0x7674caf6 -> :sswitch_0
    .end sparse-switch

    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/billingclient/api/e;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/e;->g:Lcom/google/android/gms/internal/play_billing/i6;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/e;->h:Lcom/android/billingclient/api/b0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final synthetic h0(ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/g;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/e;->g:Lcom/google/android/gms/internal/play_billing/i6;

    .line 2
    .line 3
    iget-object p4, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v5, 0x0

    .line 10
    move v1, p1

    .line 11
    move-object v3, p2

    .line 12
    move-object v4, p3

    .line 13
    move-object v6, p5

    .line 14
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/i6;->y0(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public final i(Landroid/app/Activity;Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/h;
    .locals 31

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v1, "proxyPackageVersion"

    .line 6
    .line 7
    const-string v9, "BUY_INTENT"

    .line 8
    .line 9
    iget-object v2, v8, Lcom/android/billingclient/api/e;->d:Lcom/android/billingclient/api/b1;

    .line 10
    .line 11
    const/4 v10, 0x2

    .line 12
    if-eqz v2, :cond_35

    .line 13
    .line 14
    iget-object v2, v8, Lcom/android/billingclient/api/e;->d:Lcom/android/billingclient/api/b1;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/android/billingclient/api/b1;->d()Lc2/o;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_35

    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/e;->h()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    iget-object v0, v8, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 29
    .line 30
    sget-object v1, Lcom/android/billingclient/api/j0;->m:Lcom/android/billingclient/api/h;

    .line 31
    .line 32
    invoke-static {v10, v10, v1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {v8, v1}, Lcom/android/billingclient/api/e;->Z(Lcom/android/billingclient/api/h;)Lcom/android/billingclient/api/h;

    .line 40
    .line 41
    .line 42
    return-object v1

    .line 43
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->h()Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->i()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/o;->a(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Lcom/android/billingclient/api/SkuDetails;

    .line 57
    .line 58
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/o;->a(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    check-cast v6, Lcom/android/billingclient/api/g$b;

    .line 63
    .line 64
    if-eqz v5, :cond_1

    .line 65
    .line 66
    invoke-virtual {v5}, Lcom/android/billingclient/api/SkuDetails;->g()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {v5}, Lcom/android/billingclient/api/SkuDetails;->i()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {v6}, Lcom/android/billingclient/api/g$b;->b()Lcom/android/billingclient/api/i;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-virtual {v7}, Lcom/android/billingclient/api/i;->d()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-virtual {v6}, Lcom/android/billingclient/api/g$b;->b()Lcom/android/billingclient/api/i;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    invoke-virtual {v11}, Lcom/android/billingclient/api/i;->e()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    :goto_0
    const-string v12, "subs"

    .line 92
    .line 93
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v12

    .line 97
    const/16 v13, 0x9

    .line 98
    .line 99
    const-string v14, "BillingClient"

    .line 100
    .line 101
    if-eqz v12, :cond_3

    .line 102
    .line 103
    iget-boolean v12, v8, Lcom/android/billingclient/api/e;->i:Z

    .line 104
    .line 105
    if-eqz v12, :cond_2

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    const-string v0, "Current client doesn\'t support subscriptions."

    .line 109
    .line 110
    invoke-static {v14, v0}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, v8, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 114
    .line 115
    sget-object v1, Lcom/android/billingclient/api/j0;->o:Lcom/android/billingclient/api/h;

    .line 116
    .line 117
    invoke-static {v13, v10, v1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 122
    .line 123
    .line 124
    invoke-direct {v8, v1}, Lcom/android/billingclient/api/e;->Z(Lcom/android/billingclient/api/h;)Lcom/android/billingclient/api/h;

    .line 125
    .line 126
    .line 127
    return-object v1

    .line 128
    :cond_3
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->r()Z

    .line 129
    .line 130
    .line 131
    move-result v12

    .line 132
    if-eqz v12, :cond_5

    .line 133
    .line 134
    iget-boolean v12, v8, Lcom/android/billingclient/api/e;->l:Z

    .line 135
    .line 136
    if-eqz v12, :cond_4

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_4
    const-string v0, "Current client doesn\'t support extra params for buy intent."

    .line 140
    .line 141
    invoke-static {v14, v0}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, v8, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 145
    .line 146
    sget-object v1, Lcom/android/billingclient/api/j0;->h:Lcom/android/billingclient/api/h;

    .line 147
    .line 148
    const/16 v2, 0x12

    .line 149
    .line 150
    invoke-static {v2, v10, v1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 155
    .line 156
    .line 157
    invoke-direct {v8, v1}, Lcom/android/billingclient/api/e;->Z(Lcom/android/billingclient/api/h;)Lcom/android/billingclient/api/h;

    .line 158
    .line 159
    .line 160
    return-object v1

    .line 161
    :cond_5
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 162
    .line 163
    .line 164
    move-result v12

    .line 165
    const/4 v15, 0x1

    .line 166
    if-le v12, v15, :cond_7

    .line 167
    .line 168
    iget-boolean v12, v8, Lcom/android/billingclient/api/e;->s:Z

    .line 169
    .line 170
    if-eqz v12, :cond_6

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_6
    const-string v0, "Current client doesn\'t support multi-item purchases."

    .line 174
    .line 175
    invoke-static {v14, v0}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget-object v0, v8, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 179
    .line 180
    sget-object v1, Lcom/android/billingclient/api/j0;->t:Lcom/android/billingclient/api/h;

    .line 181
    .line 182
    const/16 v2, 0x13

    .line 183
    .line 184
    invoke-static {v2, v10, v1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 189
    .line 190
    .line 191
    invoke-direct {v8, v1}, Lcom/android/billingclient/api/e;->Z(Lcom/android/billingclient/api/h;)Lcom/android/billingclient/api/h;

    .line 192
    .line 193
    .line 194
    return-object v1

    .line 195
    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 196
    .line 197
    .line 198
    move-result v12

    .line 199
    if-nez v12, :cond_9

    .line 200
    .line 201
    iget-boolean v12, v8, Lcom/android/billingclient/api/e;->t:Z

    .line 202
    .line 203
    if-eqz v12, :cond_8

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_8
    const-string v0, "Current client doesn\'t support purchases with ProductDetails."

    .line 207
    .line 208
    invoke-static {v14, v0}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-object v0, v8, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 212
    .line 213
    sget-object v1, Lcom/android/billingclient/api/j0;->v:Lcom/android/billingclient/api/h;

    .line 214
    .line 215
    const/16 v2, 0x14

    .line 216
    .line 217
    invoke-static {v2, v10, v1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 222
    .line 223
    .line 224
    invoke-direct {v8, v1}, Lcom/android/billingclient/api/e;->Z(Lcom/android/billingclient/api/h;)Lcom/android/billingclient/api/h;

    .line 225
    .line 226
    .line 227
    return-object v1

    .line 228
    :cond_9
    :goto_4
    iget-boolean v12, v8, Lcom/android/billingclient/api/e;->l:Z

    .line 229
    .line 230
    if-eqz v12, :cond_31

    .line 231
    .line 232
    iget-boolean v12, v8, Lcom/android/billingclient/api/e;->n:Z

    .line 233
    .line 234
    iget-boolean v13, v8, Lcom/android/billingclient/api/e;->A:Z

    .line 235
    .line 236
    iget-object v10, v8, Lcom/android/billingclient/api/e;->b:Ljava/lang/String;

    .line 237
    .line 238
    new-instance v4, Landroid/os/Bundle;

    .line 239
    .line 240
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 241
    .line 242
    .line 243
    const-string v15, "playBillingLibraryVersion"

    .line 244
    .line 245
    invoke-virtual {v4, v15, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->c()I

    .line 249
    .line 250
    .line 251
    move-result v10

    .line 252
    const-string v15, "prorationMode"

    .line 253
    .line 254
    if-eqz v10, :cond_a

    .line 255
    .line 256
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->c()I

    .line 257
    .line 258
    .line 259
    move-result v10

    .line 260
    invoke-virtual {v4, v15, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 261
    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->b()I

    .line 265
    .line 266
    .line 267
    move-result v10

    .line 268
    if-eqz v10, :cond_b

    .line 269
    .line 270
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->b()I

    .line 271
    .line 272
    .line 273
    move-result v10

    .line 274
    invoke-virtual {v4, v15, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 275
    .line 276
    .line 277
    :cond_b
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->d()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v10

    .line 281
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 282
    .line 283
    .line 284
    move-result v10

    .line 285
    if-nez v10, :cond_c

    .line 286
    .line 287
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->d()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v10

    .line 291
    const-string v15, "accountId"

    .line 292
    .line 293
    invoke-virtual {v4, v15, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->e()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v10

    .line 300
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 301
    .line 302
    .line 303
    move-result v10

    .line 304
    if-nez v10, :cond_d

    .line 305
    .line 306
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->e()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v10

    .line 310
    const-string v15, "obfuscatedProfileId"

    .line 311
    .line 312
    invoke-virtual {v4, v15, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->q()Z

    .line 316
    .line 317
    .line 318
    move-result v10

    .line 319
    if-eqz v10, :cond_e

    .line 320
    .line 321
    const-string v10, "isOfferPersonalizedByDeveloper"

    .line 322
    .line 323
    const/4 v15, 0x1

    .line 324
    invoke-virtual {v4, v10, v15}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 325
    .line 326
    .line 327
    :cond_e
    const/4 v10, 0x0

    .line 328
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 329
    .line 330
    .line 331
    move-result v15

    .line 332
    if-nez v15, :cond_f

    .line 333
    .line 334
    new-instance v15, Ljava/util/ArrayList;

    .line 335
    .line 336
    filled-new-array {v10}, [Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v17

    .line 340
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 341
    .line 342
    .line 343
    move-result-object v10

    .line 344
    invoke-direct {v15, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 345
    .line 346
    .line 347
    const-string v10, "skusToReplace"

    .line 348
    .line 349
    invoke-virtual {v4, v10, v15}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 350
    .line 351
    .line 352
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->f()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v10

    .line 356
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 357
    .line 358
    .line 359
    move-result v10

    .line 360
    if-nez v10, :cond_10

    .line 361
    .line 362
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->f()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v10

    .line 366
    const-string v15, "oldSkuPurchaseToken"

    .line 367
    .line 368
    invoke-virtual {v4, v15, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    :cond_10
    const/4 v10, 0x0

    .line 372
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 373
    .line 374
    .line 375
    move-result v15

    .line 376
    if-nez v15, :cond_11

    .line 377
    .line 378
    const-string v15, "oldSkuPurchaseId"

    .line 379
    .line 380
    invoke-virtual {v4, v15, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->g()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v15

    .line 387
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 388
    .line 389
    .line 390
    move-result v15

    .line 391
    if-nez v15, :cond_12

    .line 392
    .line 393
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->g()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v15

    .line 397
    const-string v10, "originalExternalTransactionId"

    .line 398
    .line 399
    invoke-virtual {v4, v10, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    const/4 v10, 0x0

    .line 403
    :cond_12
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 404
    .line 405
    .line 406
    move-result v15

    .line 407
    if-nez v15, :cond_13

    .line 408
    .line 409
    const-string v15, "paymentsPurchaseParams"

    .line 410
    .line 411
    invoke-virtual {v4, v15, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    :cond_13
    if-eqz v12, :cond_14

    .line 415
    .line 416
    const-string v10, "enablePendingPurchases"

    .line 417
    .line 418
    const/4 v12, 0x1

    .line 419
    invoke-virtual {v4, v10, v12}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 420
    .line 421
    .line 422
    goto :goto_6

    .line 423
    :cond_14
    const/4 v12, 0x1

    .line 424
    :goto_6
    if-eqz v13, :cond_15

    .line 425
    .line 426
    const-string v10, "enableAlternativeBilling"

    .line 427
    .line 428
    invoke-virtual {v4, v10, v12}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 429
    .line 430
    .line 431
    :cond_15
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 432
    .line 433
    .line 434
    move-result v10

    .line 435
    const-string v12, "additionalSkuTypes"

    .line 436
    .line 437
    const-string v13, "additionalSkus"

    .line 438
    .line 439
    const-string v15, "SKU_SERIALIZED_DOCID_LIST"

    .line 440
    .line 441
    move-object/from16 v17, v9

    .line 442
    .line 443
    const-string v9, "skuDetailsTokens"

    .line 444
    .line 445
    const-string v0, "SKU_OFFER_ID_TOKEN_LIST"

    .line 446
    .line 447
    move-object/from16 v18, v11

    .line 448
    .line 449
    if-nez v10, :cond_1f

    .line 450
    .line 451
    new-instance v10, Ljava/util/ArrayList;

    .line 452
    .line 453
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .line 455
    .line 456
    new-instance v11, Ljava/util/ArrayList;

    .line 457
    .line 458
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .line 460
    .line 461
    move-object/from16 v19, v7

    .line 462
    .line 463
    new-instance v7, Ljava/util/ArrayList;

    .line 464
    .line 465
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .line 467
    .line 468
    move-object/from16 v20, v1

    .line 469
    .line 470
    new-instance v1, Ljava/util/ArrayList;

    .line 471
    .line 472
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .line 474
    .line 475
    move-object/from16 v21, v14

    .line 476
    .line 477
    new-instance v14, Ljava/util/ArrayList;

    .line 478
    .line 479
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .line 481
    .line 482
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 483
    .line 484
    .line 485
    move-result-object v22

    .line 486
    const/16 v23, 0x0

    .line 487
    .line 488
    const/16 v24, 0x0

    .line 489
    .line 490
    const/16 v25, 0x0

    .line 491
    .line 492
    const/16 v26, 0x0

    .line 493
    .line 494
    :goto_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    .line 495
    .line 496
    .line 497
    move-result v27

    .line 498
    if-eqz v27, :cond_18

    .line 499
    .line 500
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v27

    .line 504
    check-cast v27, Lcom/android/billingclient/api/SkuDetails;

    .line 505
    .line 506
    invoke-virtual/range {v27 .. v27}, Lcom/android/billingclient/api/SkuDetails;->o()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v28

    .line 510
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->isEmpty()Z

    .line 511
    .line 512
    .line 513
    move-result v28

    .line 514
    if-nez v28, :cond_16

    .line 515
    .line 516
    move-object/from16 v28, v6

    .line 517
    .line 518
    invoke-virtual/range {v27 .. v27}, Lcom/android/billingclient/api/SkuDetails;->o()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v6

    .line 522
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    goto :goto_8

    .line 526
    :cond_16
    move-object/from16 v28, v6

    .line 527
    .line 528
    :goto_8
    invoke-virtual/range {v27 .. v27}, Lcom/android/billingclient/api/SkuDetails;->l()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v6

    .line 532
    move-object/from16 v29, v5

    .line 533
    .line 534
    invoke-virtual/range {v27 .. v27}, Lcom/android/billingclient/api/SkuDetails;->k()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v5

    .line 538
    invoke-virtual/range {v27 .. v27}, Lcom/android/billingclient/api/SkuDetails;->j()I

    .line 539
    .line 540
    .line 541
    move-result v30

    .line 542
    invoke-virtual/range {v27 .. v27}, Lcom/android/billingclient/api/SkuDetails;->n()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v8

    .line 546
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 550
    .line 551
    .line 552
    move-result v6

    .line 553
    const/16 v16, 0x1

    .line 554
    .line 555
    xor-int/lit8 v6, v6, 0x1

    .line 556
    .line 557
    or-int v23, v23, v6

    .line 558
    .line 559
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    .line 561
    .line 562
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 563
    .line 564
    .line 565
    move-result v5

    .line 566
    xor-int/lit8 v5, v5, 0x1

    .line 567
    .line 568
    or-int v24, v24, v5

    .line 569
    .line 570
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 571
    .line 572
    .line 573
    move-result-object v5

    .line 574
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    if-eqz v30, :cond_17

    .line 578
    .line 579
    move/from16 v5, v16

    .line 580
    .line 581
    goto :goto_9

    .line 582
    :cond_17
    const/4 v5, 0x0

    .line 583
    :goto_9
    or-int v25, v25, v5

    .line 584
    .line 585
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 586
    .line 587
    .line 588
    move-result v5

    .line 589
    xor-int/lit8 v5, v5, 0x1

    .line 590
    .line 591
    or-int v26, v26, v5

    .line 592
    .line 593
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    move-object/from16 v8, p0

    .line 597
    .line 598
    move-object/from16 v6, v28

    .line 599
    .line 600
    move-object/from16 v5, v29

    .line 601
    .line 602
    goto :goto_7

    .line 603
    :cond_18
    move-object/from16 v29, v5

    .line 604
    .line 605
    move-object/from16 v28, v6

    .line 606
    .line 607
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 608
    .line 609
    .line 610
    move-result v5

    .line 611
    if-nez v5, :cond_19

    .line 612
    .line 613
    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 614
    .line 615
    .line 616
    :cond_19
    if-eqz v23, :cond_1a

    .line 617
    .line 618
    invoke-virtual {v4, v0, v11}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 619
    .line 620
    .line 621
    :cond_1a
    if-eqz v24, :cond_1b

    .line 622
    .line 623
    const-string v5, "SKU_OFFER_ID_LIST"

    .line 624
    .line 625
    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 626
    .line 627
    .line 628
    :cond_1b
    if-eqz v25, :cond_1c

    .line 629
    .line 630
    const-string v5, "SKU_OFFER_TYPE_LIST"

    .line 631
    .line 632
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 633
    .line 634
    .line 635
    :cond_1c
    if-eqz v26, :cond_1d

    .line 636
    .line 637
    invoke-virtual {v4, v15, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 638
    .line 639
    .line 640
    :cond_1d
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 641
    .line 642
    .line 643
    move-result v1

    .line 644
    const/4 v5, 0x1

    .line 645
    if-le v1, v5, :cond_26

    .line 646
    .line 647
    new-instance v1, Ljava/util/ArrayList;

    .line 648
    .line 649
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 650
    .line 651
    .line 652
    move-result v6

    .line 653
    add-int/lit8 v6, v6, -0x1

    .line 654
    .line 655
    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 656
    .line 657
    .line 658
    new-instance v6, Ljava/util/ArrayList;

    .line 659
    .line 660
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 661
    .line 662
    .line 663
    move-result v7

    .line 664
    add-int/lit8 v7, v7, -0x1

    .line 665
    .line 666
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 667
    .line 668
    .line 669
    move v15, v5

    .line 670
    :goto_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 671
    .line 672
    .line 673
    move-result v7

    .line 674
    if-ge v15, v7, :cond_1e

    .line 675
    .line 676
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    move-result-object v7

    .line 680
    check-cast v7, Lcom/android/billingclient/api/SkuDetails;

    .line 681
    .line 682
    invoke-virtual {v7}, Lcom/android/billingclient/api/SkuDetails;->g()Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v7

    .line 686
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    .line 688
    .line 689
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    move-result-object v7

    .line 693
    check-cast v7, Lcom/android/billingclient/api/SkuDetails;

    .line 694
    .line 695
    invoke-virtual {v7}, Lcom/android/billingclient/api/SkuDetails;->i()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v7

    .line 699
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    add-int/lit8 v15, v15, 0x1

    .line 703
    .line 704
    goto :goto_a

    .line 705
    :cond_1e
    invoke-virtual {v4, v13, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 706
    .line 707
    .line 708
    invoke-virtual {v4, v12, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 709
    .line 710
    .line 711
    goto/16 :goto_c

    .line 712
    .line 713
    :cond_1f
    move-object/from16 v20, v1

    .line 714
    .line 715
    move-object/from16 v29, v5

    .line 716
    .line 717
    move-object/from16 v28, v6

    .line 718
    .line 719
    move-object/from16 v19, v7

    .line 720
    .line 721
    move-object/from16 v21, v14

    .line 722
    .line 723
    const/4 v5, 0x1

    .line 724
    new-instance v1, Ljava/util/ArrayList;

    .line 725
    .line 726
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 727
    .line 728
    .line 729
    move-result v2

    .line 730
    add-int/lit8 v2, v2, -0x1

    .line 731
    .line 732
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 733
    .line 734
    .line 735
    new-instance v2, Ljava/util/ArrayList;

    .line 736
    .line 737
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 738
    .line 739
    .line 740
    move-result v6

    .line 741
    add-int/lit8 v6, v6, -0x1

    .line 742
    .line 743
    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 744
    .line 745
    .line 746
    new-instance v6, Ljava/util/ArrayList;

    .line 747
    .line 748
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 749
    .line 750
    .line 751
    new-instance v7, Ljava/util/ArrayList;

    .line 752
    .line 753
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .line 755
    .line 756
    new-instance v8, Ljava/util/ArrayList;

    .line 757
    .line 758
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .line 760
    .line 761
    const/4 v10, 0x0

    .line 762
    :goto_b
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 763
    .line 764
    .line 765
    move-result v11

    .line 766
    if-ge v10, v11, :cond_23

    .line 767
    .line 768
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v11

    .line 772
    check-cast v11, Lcom/android/billingclient/api/g$b;

    .line 773
    .line 774
    invoke-virtual {v11}, Lcom/android/billingclient/api/g$b;->b()Lcom/android/billingclient/api/i;

    .line 775
    .line 776
    .line 777
    move-result-object v14

    .line 778
    invoke-virtual {v14}, Lcom/android/billingclient/api/i;->i()Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v16

    .line 782
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    .line 783
    .line 784
    .line 785
    move-result v16

    .line 786
    if-nez v16, :cond_20

    .line 787
    .line 788
    invoke-virtual {v14}, Lcom/android/billingclient/api/i;->i()Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object v5

    .line 792
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    .line 794
    .line 795
    :cond_20
    invoke-virtual {v11}, Lcom/android/billingclient/api/g$b;->c()Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object v5

    .line 799
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    .line 801
    .line 802
    invoke-virtual {v14}, Lcom/android/billingclient/api/i;->j()Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v5

    .line 806
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 807
    .line 808
    .line 809
    move-result v5

    .line 810
    if-nez v5, :cond_21

    .line 811
    .line 812
    invoke-virtual {v14}, Lcom/android/billingclient/api/i;->j()Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v5

    .line 816
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    .line 818
    .line 819
    :cond_21
    if-lez v10, :cond_22

    .line 820
    .line 821
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    move-result-object v5

    .line 825
    check-cast v5, Lcom/android/billingclient/api/g$b;

    .line 826
    .line 827
    invoke-virtual {v5}, Lcom/android/billingclient/api/g$b;->b()Lcom/android/billingclient/api/i;

    .line 828
    .line 829
    .line 830
    move-result-object v5

    .line 831
    invoke-virtual {v5}, Lcom/android/billingclient/api/i;->d()Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v5

    .line 835
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    .line 837
    .line 838
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v5

    .line 842
    check-cast v5, Lcom/android/billingclient/api/g$b;

    .line 843
    .line 844
    invoke-virtual {v5}, Lcom/android/billingclient/api/g$b;->b()Lcom/android/billingclient/api/i;

    .line 845
    .line 846
    .line 847
    move-result-object v5

    .line 848
    invoke-virtual {v5}, Lcom/android/billingclient/api/i;->e()Ljava/lang/String;

    .line 849
    .line 850
    .line 851
    move-result-object v5

    .line 852
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    .line 854
    .line 855
    :cond_22
    add-int/lit8 v10, v10, 0x1

    .line 856
    .line 857
    const/4 v5, 0x1

    .line 858
    goto :goto_b

    .line 859
    :cond_23
    invoke-virtual {v4, v0, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 860
    .line 861
    .line 862
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 863
    .line 864
    .line 865
    move-result v5

    .line 866
    if-nez v5, :cond_24

    .line 867
    .line 868
    invoke-virtual {v4, v9, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 869
    .line 870
    .line 871
    :cond_24
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 872
    .line 873
    .line 874
    move-result v5

    .line 875
    if-nez v5, :cond_25

    .line 876
    .line 877
    invoke-virtual {v4, v15, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 878
    .line 879
    .line 880
    :cond_25
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 881
    .line 882
    .line 883
    move-result v5

    .line 884
    if-nez v5, :cond_26

    .line 885
    .line 886
    invoke-virtual {v4, v13, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 887
    .line 888
    .line 889
    invoke-virtual {v4, v12, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 890
    .line 891
    .line 892
    :cond_26
    :goto_c
    invoke-virtual {v4, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 893
    .line 894
    .line 895
    move-result v0

    .line 896
    move-object/from16 v8, p0

    .line 897
    .line 898
    if-eqz v0, :cond_28

    .line 899
    .line 900
    iget-boolean v0, v8, Lcom/android/billingclient/api/e;->q:Z

    .line 901
    .line 902
    if-eqz v0, :cond_27

    .line 903
    .line 904
    goto :goto_d

    .line 905
    :cond_27
    iget-object v0, v8, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 906
    .line 907
    sget-object v1, Lcom/android/billingclient/api/j0;->u:Lcom/android/billingclient/api/h;

    .line 908
    .line 909
    const/16 v2, 0x15

    .line 910
    .line 911
    const/4 v3, 0x2

    .line 912
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 913
    .line 914
    .line 915
    move-result-object v2

    .line 916
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 917
    .line 918
    .line 919
    invoke-direct {v8, v1}, Lcom/android/billingclient/api/e;->Z(Lcom/android/billingclient/api/h;)Lcom/android/billingclient/api/h;

    .line 920
    .line 921
    .line 922
    return-object v1

    .line 923
    :cond_28
    :goto_d
    const-string v0, "skuPackageName"

    .line 924
    .line 925
    if-eqz v29, :cond_29

    .line 926
    .line 927
    invoke-virtual/range {v29 .. v29}, Lcom/android/billingclient/api/SkuDetails;->m()Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object v1

    .line 931
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 932
    .line 933
    .line 934
    move-result v1

    .line 935
    if-nez v1, :cond_29

    .line 936
    .line 937
    invoke-virtual/range {v29 .. v29}, Lcom/android/billingclient/api/SkuDetails;->m()Ljava/lang/String;

    .line 938
    .line 939
    .line 940
    move-result-object v1

    .line 941
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    .line 943
    .line 944
    :goto_e
    const/4 v0, 0x0

    .line 945
    const/4 v15, 0x1

    .line 946
    goto :goto_f

    .line 947
    :cond_29
    if-eqz v28, :cond_2a

    .line 948
    .line 949
    invoke-virtual/range {v28 .. v28}, Lcom/android/billingclient/api/g$b;->b()Lcom/android/billingclient/api/i;

    .line 950
    .line 951
    .line 952
    move-result-object v1

    .line 953
    invoke-virtual {v1}, Lcom/android/billingclient/api/i;->h()Ljava/lang/String;

    .line 954
    .line 955
    .line 956
    move-result-object v1

    .line 957
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 958
    .line 959
    .line 960
    move-result v1

    .line 961
    if-nez v1, :cond_2a

    .line 962
    .line 963
    invoke-virtual/range {v28 .. v28}, Lcom/android/billingclient/api/g$b;->b()Lcom/android/billingclient/api/i;

    .line 964
    .line 965
    .line 966
    move-result-object v1

    .line 967
    invoke-virtual {v1}, Lcom/android/billingclient/api/i;->h()Ljava/lang/String;

    .line 968
    .line 969
    .line 970
    move-result-object v1

    .line 971
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    .line 973
    .line 974
    goto :goto_e

    .line 975
    :cond_2a
    const/4 v0, 0x0

    .line 976
    const/4 v15, 0x0

    .line 977
    :goto_f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 978
    .line 979
    .line 980
    move-result v1

    .line 981
    if-nez v1, :cond_2b

    .line 982
    .line 983
    const-string v1, "accountName"

    .line 984
    .line 985
    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    .line 987
    .line 988
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 989
    .line 990
    .line 991
    move-result-object v0

    .line 992
    if-nez v0, :cond_2c

    .line 993
    .line 994
    const-string v0, "Activity\'s intent is null."

    .line 995
    .line 996
    move-object/from16 v9, v21

    .line 997
    .line 998
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    .line 1000
    .line 1001
    goto :goto_10

    .line 1002
    :cond_2c
    move-object/from16 v9, v21

    .line 1003
    .line 1004
    const-string v1, "PROXY_PACKAGE"

    .line 1005
    .line 1006
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v2

    .line 1010
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1011
    .line 1012
    .line 1013
    move-result v2

    .line 1014
    if-nez v2, :cond_2d

    .line 1015
    .line 1016
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v0

    .line 1020
    const-string v1, "proxyPackage"

    .line 1021
    .line 1022
    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    .line 1024
    .line 1025
    :try_start_0
    iget-object v1, v8, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 1026
    .line 1027
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v1

    .line 1031
    const/4 v2, 0x0

    .line 1032
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v0

    .line 1036
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1037
    .line 1038
    move-object/from16 v1, v20

    .line 1039
    .line 1040
    :try_start_1
    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1041
    .line 1042
    .line 1043
    goto :goto_10

    .line 1044
    :catch_0
    move-object/from16 v1, v20

    .line 1045
    .line 1046
    :catch_1
    const-string v0, "package not found"

    .line 1047
    .line 1048
    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    .line 1050
    .line 1051
    :cond_2d
    :goto_10
    iget-boolean v0, v8, Lcom/android/billingclient/api/e;->t:Z

    .line 1052
    .line 1053
    if-eqz v0, :cond_2e

    .line 1054
    .line 1055
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 1056
    .line 1057
    .line 1058
    move-result v0

    .line 1059
    if-nez v0, :cond_2e

    .line 1060
    .line 1061
    const/16 v0, 0x11

    .line 1062
    .line 1063
    :goto_11
    move v3, v0

    .line 1064
    goto :goto_12

    .line 1065
    :cond_2e
    iget-boolean v0, v8, Lcom/android/billingclient/api/e;->r:Z

    .line 1066
    .line 1067
    if-eqz v0, :cond_2f

    .line 1068
    .line 1069
    if-eqz v15, :cond_2f

    .line 1070
    .line 1071
    const/16 v0, 0xf

    .line 1072
    .line 1073
    goto :goto_11

    .line 1074
    :cond_2f
    iget-boolean v0, v8, Lcom/android/billingclient/api/e;->n:Z

    .line 1075
    .line 1076
    if-eqz v0, :cond_30

    .line 1077
    .line 1078
    const/16 v3, 0x9

    .line 1079
    .line 1080
    goto :goto_12

    .line 1081
    :cond_30
    const/4 v0, 0x6

    .line 1082
    goto :goto_11

    .line 1083
    :goto_12
    new-instance v0, Lcom/android/billingclient/api/u;

    .line 1084
    .line 1085
    move-object v1, v0

    .line 1086
    move-object/from16 v2, p0

    .line 1087
    .line 1088
    move-object v7, v4

    .line 1089
    move-object/from16 v4, v19

    .line 1090
    .line 1091
    move-object/from16 v5, v18

    .line 1092
    .line 1093
    move-object/from16 v6, p2

    .line 1094
    .line 1095
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/u;-><init>(Lcom/android/billingclient/api/e;ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/g;Landroid/os/Bundle;)V

    .line 1096
    .line 1097
    .line 1098
    const-wide/16 v3, 0x1388

    .line 1099
    .line 1100
    const/4 v5, 0x0

    .line 1101
    iget-object v6, v8, Lcom/android/billingclient/api/e;->c:Landroid/os/Handler;

    .line 1102
    .line 1103
    move-object/from16 v1, p0

    .line 1104
    .line 1105
    move-object v2, v0

    .line 1106
    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/e;->c0(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v0

    .line 1110
    const/16 v1, 0x4e

    .line 1111
    .line 1112
    goto :goto_13

    .line 1113
    :cond_31
    move-object/from16 v19, v7

    .line 1114
    .line 1115
    move-object/from16 v17, v9

    .line 1116
    .line 1117
    move-object/from16 v18, v11

    .line 1118
    .line 1119
    move-object v9, v14

    .line 1120
    new-instance v2, Lcom/android/billingclient/api/d1;

    .line 1121
    .line 1122
    invoke-direct {v2, v8, v7, v11}, Lcom/android/billingclient/api/d1;-><init>(Lcom/android/billingclient/api/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    .line 1124
    .line 1125
    const-wide/16 v3, 0x1388

    .line 1126
    .line 1127
    const/4 v5, 0x0

    .line 1128
    iget-object v6, v8, Lcom/android/billingclient/api/e;->c:Landroid/os/Handler;

    .line 1129
    .line 1130
    move-object/from16 v1, p0

    .line 1131
    .line 1132
    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/e;->c0(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v0

    .line 1136
    const/16 v1, 0x50

    .line 1137
    .line 1138
    :goto_13
    if-nez v0, :cond_32

    .line 1139
    .line 1140
    :try_start_2
    iget-object v0, v8, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 1141
    .line 1142
    sget-object v1, Lcom/android/billingclient/api/j0;->m:Lcom/android/billingclient/api/h;

    .line 1143
    .line 1144
    const/16 v2, 0x19

    .line 1145
    .line 1146
    const/4 v3, 0x2

    .line 1147
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v2

    .line 1151
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 1152
    .line 1153
    .line 1154
    invoke-direct {v8, v1}, Lcom/android/billingclient/api/e;->Z(Lcom/android/billingclient/api/h;)Lcom/android/billingclient/api/h;

    .line 1155
    .line 1156
    .line 1157
    return-object v1

    .line 1158
    :cond_32
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1159
    .line 1160
    const-wide/16 v3, 0x1388

    .line 1161
    .line 1162
    invoke-interface {v0, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v0

    .line 1166
    check-cast v0, Landroid/os/Bundle;

    .line 1167
    .line 1168
    invoke-static {v0, v9}, Lcom/google/android/gms/internal/play_billing/b0;->b(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 1169
    .line 1170
    .line 1171
    move-result v2

    .line 1172
    invoke-static {v0, v9}, Lcom/google/android/gms/internal/play_billing/b0;->g(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v3

    .line 1176
    if-eqz v2, :cond_34

    .line 1177
    .line 1178
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1179
    .line 1180
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1181
    .line 1182
    .line 1183
    const-string v5, "Unable to buy item, Error response code: "

    .line 1184
    .line 1185
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    .line 1187
    .line 1188
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1189
    .line 1190
    .line 1191
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v4

    .line 1195
    invoke-static {v9, v4}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    .line 1197
    .line 1198
    invoke-static {v2, v3}, Lcom/android/billingclient/api/j0;->a(ILjava/lang/String;)Lcom/android/billingclient/api/h;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v2

    .line 1202
    iget-object v3, v8, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 1203
    .line 1204
    if-eqz v0, :cond_33

    .line 1205
    .line 1206
    const/16 v1, 0x17

    .line 1207
    .line 1208
    :cond_33
    const/4 v4, 0x2

    .line 1209
    invoke-static {v1, v4, v2}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v0

    .line 1213
    invoke-interface {v3, v0}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 1214
    .line 1215
    .line 1216
    invoke-direct {v8, v2}, Lcom/android/billingclient/api/e;->Z(Lcom/android/billingclient/api/h;)Lcom/android/billingclient/api/h;

    .line 1217
    .line 1218
    .line 1219
    return-object v2

    .line 1220
    :cond_34
    new-instance v1, Landroid/content/Intent;

    .line 1221
    .line 1222
    const-class v2, Lcom/android/billingclient/api/ProxyBillingActivity;

    .line 1223
    .line 1224
    move-object/from16 v3, p1

    .line 1225
    .line 1226
    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1227
    .line 1228
    .line 1229
    move-object/from16 v2, v17

    .line 1230
    .line 1231
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v0

    .line 1235
    check-cast v0, Landroid/app/PendingIntent;

    .line 1236
    .line 1237
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1238
    .line 1239
    .line 1240
    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1241
    .line 1242
    .line 1243
    sget-object v0, Lcom/android/billingclient/api/j0;->l:Lcom/android/billingclient/api/h;

    .line 1244
    .line 1245
    return-object v0

    .line 1246
    :catch_2
    move-exception v0

    .line 1247
    const-string v1, "Exception while launching billing flow. Try to reconnect"

    .line 1248
    .line 1249
    invoke-static {v9, v1, v0}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1250
    .line 1251
    .line 1252
    iget-object v0, v8, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 1253
    .line 1254
    sget-object v1, Lcom/android/billingclient/api/j0;->m:Lcom/android/billingclient/api/h;

    .line 1255
    .line 1256
    const/4 v2, 0x5

    .line 1257
    const/4 v3, 0x2

    .line 1258
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v2

    .line 1262
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 1263
    .line 1264
    .line 1265
    invoke-direct {v8, v1}, Lcom/android/billingclient/api/e;->Z(Lcom/android/billingclient/api/h;)Lcom/android/billingclient/api/h;

    .line 1266
    .line 1267
    .line 1268
    return-object v1

    .line 1269
    :catch_3
    move-exception v0

    .line 1270
    goto :goto_14

    .line 1271
    :catch_4
    move-exception v0

    .line 1272
    :goto_14
    const-string v1, "Time out while launching billing flow. Try to reconnect"

    .line 1273
    .line 1274
    invoke-static {v9, v1, v0}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1275
    .line 1276
    .line 1277
    iget-object v0, v8, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 1278
    .line 1279
    sget-object v1, Lcom/android/billingclient/api/j0;->n:Lcom/android/billingclient/api/h;

    .line 1280
    .line 1281
    const/4 v2, 0x4

    .line 1282
    const/4 v3, 0x2

    .line 1283
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v2

    .line 1287
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 1288
    .line 1289
    .line 1290
    invoke-direct {v8, v1}, Lcom/android/billingclient/api/e;->Z(Lcom/android/billingclient/api/h;)Lcom/android/billingclient/api/h;

    .line 1291
    .line 1292
    .line 1293
    return-object v1

    .line 1294
    :cond_35
    move v3, v10

    .line 1295
    iget-object v0, v8, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 1296
    .line 1297
    sget-object v1, Lcom/android/billingclient/api/j0;->F:Lcom/android/billingclient/api/h;

    .line 1298
    .line 1299
    const/16 v2, 0xc

    .line 1300
    .line 1301
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v2

    .line 1305
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 1306
    .line 1307
    .line 1308
    return-object v1
.end method

.method final synthetic i0(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/e;->g:Lcom/google/android/gms/internal/play_billing/i6;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    iget-object v2, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v5, 0x0

    .line 11
    move-object v3, p1

    .line 12
    move-object v4, p2

    .line 13
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i6;->U(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final k(Lcom/android/billingclient/api/j;Lc2/l;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/e;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x7

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 9
    .line 10
    sget-object v0, Lcom/android/billingclient/api/j0;->m:Lcom/android/billingclient/api/h;

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-static {v2, v1, v0}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {p2, v0, p1}, Lc2/l;->onProductDetailsResponse(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/e;->t:Z

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    const-string p1, "BillingClient"

    .line 34
    .line 35
    const-string v0, "Querying product details is not supported."

    .line 36
    .line 37
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 41
    .line 42
    sget-object v0, Lcom/android/billingclient/api/j0;->v:Lcom/android/billingclient/api/h;

    .line 43
    .line 44
    const/16 v2, 0x14

    .line 45
    .line 46
    invoke-static {v2, v1, v0}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-interface {p2, v0, p1}, Lc2/l;->onProductDetailsResponse(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    new-instance v3, Lcom/android/billingclient/api/s;

    .line 63
    .line 64
    invoke-direct {v3, p0, p1, p2}, Lcom/android/billingclient/api/s;-><init>(Lcom/android/billingclient/api/e;Lcom/android/billingclient/api/j;Lc2/l;)V

    .line 65
    .line 66
    .line 67
    const-wide/16 v4, 0x7530

    .line 68
    .line 69
    new-instance v6, Lcom/android/billingclient/api/t;

    .line 70
    .line 71
    invoke-direct {v6, p0, p2}, Lcom/android/billingclient/api/t;-><init>(Lcom/android/billingclient/api/e;Lc2/l;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->Y()Landroid/os/Handler;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    move-object v2, p0

    .line 79
    invoke-direct/range {v2 .. v7}, Lcom/android/billingclient/api/e;->c0(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-nez p1, :cond_2

    .line 84
    .line 85
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->a0()Lcom/android/billingclient/api/h;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 90
    .line 91
    const/16 v2, 0x19

    .line 92
    .line 93
    invoke-static {v2, v1, p1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 98
    .line 99
    .line 100
    new-instance v0, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-interface {p2, p1, v0}, Lc2/l;->onProductDetailsResponse(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    return-void
.end method

.method public final l(Lc2/p;Lc2/m;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lc2/p;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/e;->d0(Ljava/lang/String;Lc2/m;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final m(Ljava/lang/String;Lc2/m;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/e;->d0(Ljava/lang/String;Lc2/m;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final n(Lc2/q;Lc2/n;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lc2/q;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/e;->e0(Ljava/lang/String;Lc2/n;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final o(Ljava/lang/String;Lc2/n;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/e;->e0(Ljava/lang/String;Lc2/n;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final p(Lcom/android/billingclient/api/k;Lc2/r;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/e;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 11
    .line 12
    sget-object v0, Lcom/android/billingclient/api/j0;->m:Lcom/android/billingclient/api/h;

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-static {v3, v2, v0}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {p1, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p2, v0, v1}, Lc2/r;->a(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/k;->a()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {p1}, Lcom/android/billingclient/api/k;->b()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const-string v0, "BillingClient"

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    const-string p1, "Please fix the input params. SKU type can\'t be empty."

    .line 43
    .line 44
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 48
    .line 49
    sget-object v0, Lcom/android/billingclient/api/j0;->f:Lcom/android/billingclient/api/h;

    .line 50
    .line 51
    const/16 v3, 0x31

    .line 52
    .line 53
    invoke-static {v3, v2, v0}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-interface {p1, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p2, v0, v1}, Lc2/r;->a(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    if-nez v6, :cond_2

    .line 65
    .line 66
    const-string p1, "Please fix the input params. The list of SKUs can\'t be empty."

    .line 67
    .line 68
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 72
    .line 73
    sget-object v0, Lcom/android/billingclient/api/j0;->e:Lcom/android/billingclient/api/h;

    .line 74
    .line 75
    const/16 v3, 0x30

    .line 76
    .line 77
    invoke-static {v3, v2, v0}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-interface {p1, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 82
    .line 83
    .line 84
    invoke-interface {p2, v0, v1}, Lc2/r;->a(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_2
    new-instance p1, Lcom/android/billingclient/api/m1;

    .line 89
    .line 90
    const/4 v7, 0x0

    .line 91
    move-object v3, p1

    .line 92
    move-object v4, p0

    .line 93
    move-object v8, p2

    .line 94
    invoke-direct/range {v3 .. v8}, Lcom/android/billingclient/api/m1;-><init>(Lcom/android/billingclient/api/e;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lc2/r;)V

    .line 95
    .line 96
    .line 97
    const-wide/16 v5, 0x7530

    .line 98
    .line 99
    new-instance v7, Lcom/android/billingclient/api/n1;

    .line 100
    .line 101
    invoke-direct {v7, p0, p2}, Lcom/android/billingclient/api/n1;-><init>(Lcom/android/billingclient/api/e;Lc2/r;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->Y()Landroid/os/Handler;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    move-object v3, p0

    .line 109
    move-object v4, p1

    .line 110
    invoke-direct/range {v3 .. v8}, Lcom/android/billingclient/api/e;->c0(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-nez p1, :cond_3

    .line 115
    .line 116
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->a0()Lcom/android/billingclient/api/h;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object v0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 121
    .line 122
    const/16 v3, 0x19

    .line 123
    .line 124
    invoke-static {v3, v2, p1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 129
    .line 130
    .line 131
    invoke-interface {p2, p1, v1}, Lc2/r;->a(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 132
    .line 133
    .line 134
    :cond_3
    return-void
.end method

.method final synthetic p0(Lc2/a;Lc2/b;)Ljava/lang/Object;
    .locals 7

    .line 1
    const-string v0, "BillingClient"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/billingclient/api/e;->g:Lcom/google/android/gms/internal/play_billing/i6;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {p1}, Lc2/a;->a()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v4, p0, Lcom/android/billingclient/api/e;->b:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v5, Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v6, "playBillingLibraryVersion"

    .line 24
    .line 25
    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/16 v4, 0x9

    .line 29
    .line 30
    invoke-interface {v2, v4, v3, p1, v5}, Lcom/google/android/gms/internal/play_billing/i6;->Z0(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/b0;->b(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/b0;->g(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {v2, p1}, Lcom/android/billingclient/api/j0;->a(ILjava/lang/String;)Lcom/android/billingclient/api/h;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p2, p1}, Lc2/b;->a(Lcom/android/billingclient/api/h;)V

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    :catch_0
    move-exception p1

    .line 51
    const-string v2, "Error acknowledge purchase!"

    .line 52
    .line 53
    invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 57
    .line 58
    sget-object v0, Lcom/android/billingclient/api/j0;->m:Lcom/android/billingclient/api/h;

    .line 59
    .line 60
    const/16 v2, 0x1c

    .line 61
    .line 62
    const/4 v3, 0x3

    .line 63
    invoke-static {v2, v3, v0}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-interface {p1, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p2, v0}, Lc2/b;->a(Lcom/android/billingclient/api/h;)V

    .line 71
    .line 72
    .line 73
    return-object v1
.end method

.method public q(Landroid/app/Activity;Lc2/e;)Lcom/android/billingclient/api/h;
    .locals 9

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/billingclient/api/e;->h()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x10

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 12
    .line 13
    sget-object p2, Lcom/android/billingclient/api/j0;->m:Lcom/android/billingclient/api/h;

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    invoke-static {v0, v1, p2}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {p1, v0}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 21
    .line 22
    .line 23
    return-object p2

    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/e;->x:Z

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    const-string p1, "BillingClient"

    .line 29
    .line 30
    const-string p2, "Current Play Store version doesn\'t support alternative billing only."

    .line 31
    .line 32
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 36
    .line 37
    sget-object p2, Lcom/android/billingclient/api/j0;->E:Lcom/android/billingclient/api/h;

    .line 38
    .line 39
    const/16 v0, 0x42

    .line 40
    .line 41
    invoke-static {v0, v1, p2}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {p1, v0}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 46
    .line 47
    .line 48
    return-object p2

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/android/billingclient/api/e;->c:Landroid/os/Handler;

    .line 50
    .line 51
    new-instance v2, Lcom/android/billingclient/api/y;

    .line 52
    .line 53
    invoke-direct {v2, p0, v0, p2}, Lcom/android/billingclient/api/y;-><init>(Lcom/android/billingclient/api/e;Landroid/os/Handler;Lc2/e;)V

    .line 54
    .line 55
    .line 56
    new-instance v4, Lcom/android/billingclient/api/e1;

    .line 57
    .line 58
    invoke-direct {v4, p0, p1, v2, p2}, Lcom/android/billingclient/api/e1;-><init>(Lcom/android/billingclient/api/e;Landroid/app/Activity;Landroid/os/ResultReceiver;Lc2/e;)V

    .line 59
    .line 60
    .line 61
    const-wide/16 v5, 0x7530

    .line 62
    .line 63
    new-instance v7, Lcom/android/billingclient/api/f1;

    .line 64
    .line 65
    invoke-direct {v7, p0, p2}, Lcom/android/billingclient/api/f1;-><init>(Lcom/android/billingclient/api/e;Lc2/e;)V

    .line 66
    .line 67
    .line 68
    iget-object v8, p0, Lcom/android/billingclient/api/e;->c:Landroid/os/Handler;

    .line 69
    .line 70
    move-object v3, p0

    .line 71
    invoke-direct/range {v3 .. v8}, Lcom/android/billingclient/api/e;->c0(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-nez p1, :cond_2

    .line 76
    .line 77
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->a0()Lcom/android/billingclient/api/h;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object p2, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 82
    .line 83
    const/16 v0, 0x19

    .line 84
    .line 85
    invoke-static {v0, v1, p1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-interface {p2, v0}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 90
    .line 91
    .line 92
    return-object p1

    .line 93
    :cond_2
    sget-object p1, Lcom/android/billingclient/api/j0;->l:Lcom/android/billingclient/api/h;

    .line 94
    .line 95
    return-object p1

    .line 96
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 97
    .line 98
    const-string p2, "Please provide a valid activity."

    .line 99
    .line 100
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1
.end method

.method final synthetic q0(Lc2/i;Lc2/j;)Ljava/lang/Object;
    .locals 7

    .line 1
    const-string v0, "BillingClient"

    .line 2
    .line 3
    invoke-virtual {p1}, Lc2/i;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x4

    .line 8
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v3, "Consuming purchase with token: "

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/b0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-boolean v2, p0, Lcom/android/billingclient/api/e;->n:Z

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/billingclient/api/e;->g:Lcom/google/android/gms/internal/play_billing/i6;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iget-boolean v4, p0, Lcom/android/billingclient/api/e;->n:Z

    .line 41
    .line 42
    iget-object v5, p0, Lcom/android/billingclient/api/e;->b:Ljava/lang/String;

    .line 43
    .line 44
    new-instance v6, Landroid/os/Bundle;

    .line 45
    .line 46
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 47
    .line 48
    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    const-string v4, "playBillingLibraryVersion"

    .line 52
    .line 53
    invoke-virtual {v6, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    const/16 v4, 0x9

    .line 57
    .line 58
    invoke-interface {v2, v4, v3, p1, v6}, Lcom/google/android/gms/internal/play_billing/i6;->u(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const-string v3, "RESPONSE_CODE"

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/b0;->g(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    iget-object v2, p0, Lcom/android/billingclient/api/e;->g:Lcom/google/android/gms/internal/play_billing/i6;

    .line 74
    .line 75
    iget-object v3, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 76
    .line 77
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const/4 v4, 0x3

    .line 82
    invoke-interface {v2, v4, v3, p1}, Lcom/google/android/gms/internal/play_billing/i6;->s(ILjava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    const-string v2, ""

    .line 87
    .line 88
    :goto_0
    invoke-static {v3, v2}, Lcom/android/billingclient/api/j0;->a(ILjava/lang/String;)Lcom/android/billingclient/api/h;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-nez v3, :cond_2

    .line 93
    .line 94
    const-string v3, "Successfully consumed purchase."

    .line 95
    .line 96
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/b0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {p2, v2, p1}, Lc2/j;->a(Lcom/android/billingclient/api/h;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v5, "Error consuming purchase with token. Response code: "

    .line 109
    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object v3, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 124
    .line 125
    const/16 v4, 0x17

    .line 126
    .line 127
    invoke-static {v4, v1, v2}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-interface {v3, v4}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 132
    .line 133
    .line 134
    invoke-interface {p2, v2, p1}, Lc2/j;->a(Lcom/android/billingclient/api/h;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :catch_0
    move-exception v2

    .line 139
    const-string v3, "Error consuming purchase!"

    .line 140
    .line 141
    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 145
    .line 146
    sget-object v2, Lcom/android/billingclient/api/j0;->m:Lcom/android/billingclient/api/h;

    .line 147
    .line 148
    const/16 v3, 0x1d

    .line 149
    .line 150
    invoke-static {v3, v1, v2}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 155
    .line 156
    .line 157
    invoke-interface {p2, v2, p1}, Lc2/j;->a(Lcom/android/billingclient/api/h;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :goto_1
    const/4 p1, 0x0

    .line 161
    return-object p1
.end method

.method public final r(Lc2/g;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/e;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x6

    .line 6
    const-string v2, "BillingClient"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "Service connection is valid. No need to re-initialize."

    .line 11
    .line 12
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/b0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/android/billingclient/api/h0;->d(I)Lcom/google/android/gms/internal/play_billing/t4;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/i0;->c(Lcom/google/android/gms/internal/play_billing/t4;)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lcom/android/billingclient/api/j0;->l:Lcom/android/billingclient/api/h;

    .line 25
    .line 26
    invoke-interface {p1, v0}, Lc2/g;->onBillingSetupFinished(Lcom/android/billingclient/api/h;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget v0, p0, Lcom/android/billingclient/api/e;->a:I

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    if-ne v0, v3, :cond_1

    .line 34
    .line 35
    const-string v0, "Client is already in the process of connecting to billing service."

    .line 36
    .line 37
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 41
    .line 42
    sget-object v2, Lcom/android/billingclient/api/j0;->d:Lcom/android/billingclient/api/h;

    .line 43
    .line 44
    const/16 v3, 0x25

    .line 45
    .line 46
    invoke-static {v3, v1, v2}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v2}, Lc2/g;->onBillingSetupFinished(Lcom/android/billingclient/api/h;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    iget v0, p0, Lcom/android/billingclient/api/e;->a:I

    .line 58
    .line 59
    const/4 v4, 0x3

    .line 60
    if-ne v0, v4, :cond_2

    .line 61
    .line 62
    const-string v0, "Client was already closed and can\'t be reused. Please create another instance."

    .line 63
    .line 64
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 68
    .line 69
    sget-object v2, Lcom/android/billingclient/api/j0;->m:Lcom/android/billingclient/api/h;

    .line 70
    .line 71
    const/16 v3, 0x26

    .line 72
    .line 73
    invoke-static {v3, v1, v2}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {p1, v2}, Lc2/g;->onBillingSetupFinished(Lcom/android/billingclient/api/h;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_2
    iput v3, p0, Lcom/android/billingclient/api/e;->a:I

    .line 85
    .line 86
    const-string v0, "Starting in-app billing setup."

    .line 87
    .line 88
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/b0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance v0, Lcom/android/billingclient/api/b0;

    .line 92
    .line 93
    const/4 v4, 0x0

    .line 94
    invoke-direct {v0, p0, p1, v4}, Lcom/android/billingclient/api/b0;-><init>(Lcom/android/billingclient/api/e;Lc2/g;Lc2/u;)V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Lcom/android/billingclient/api/e;->h:Lcom/android/billingclient/api/b0;

    .line 98
    .line 99
    new-instance v0, Landroid/content/Intent;

    .line 100
    .line 101
    const-string v4, "com.android.vending.billing.InAppBillingService.BIND"

    .line 102
    .line 103
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string v4, "com.android.vending"

    .line 107
    .line 108
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    iget-object v5, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 112
    .line 113
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    const/4 v6, 0x0

    .line 118
    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    const/16 v7, 0x29

    .line 123
    .line 124
    if-eqz v5, :cond_5

    .line 125
    .line 126
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    if-nez v8, :cond_5

    .line 131
    .line 132
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 137
    .line 138
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 139
    .line 140
    if-eqz v5, :cond_6

    .line 141
    .line 142
    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 143
    .line 144
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-eqz v4, :cond_4

    .line 151
    .line 152
    if-eqz v5, :cond_4

    .line 153
    .line 154
    new-instance v4, Landroid/content/ComponentName;

    .line 155
    .line 156
    invoke-direct {v4, v7, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    new-instance v5, Landroid/content/Intent;

    .line 160
    .line 161
    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/android/billingclient/api/e;->b:Ljava/lang/String;

    .line 168
    .line 169
    const-string v4, "playBillingLibraryVersion"

    .line 170
    .line 171
    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 175
    .line 176
    iget-object v4, p0, Lcom/android/billingclient/api/e;->h:Lcom/android/billingclient/api/b0;

    .line 177
    .line 178
    invoke-virtual {v0, v5, v4, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_3

    .line 183
    .line 184
    const-string p1, "Service was bonded successfully."

    .line 185
    .line 186
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/b0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :cond_3
    const-string v0, "Connection to Billing service is blocked."

    .line 191
    .line 192
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const/16 v3, 0x27

    .line 196
    .line 197
    goto :goto_0

    .line 198
    :cond_4
    const-string v0, "The device doesn\'t have valid Play Store."

    .line 199
    .line 200
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const/16 v3, 0x28

    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_5
    move v3, v7

    .line 207
    :cond_6
    :goto_0
    iput v6, p0, Lcom/android/billingclient/api/e;->a:I

    .line 208
    .line 209
    const-string v0, "Billing service unavailable on device."

    .line 210
    .line 211
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/b0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    iget-object v0, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 215
    .line 216
    sget-object v2, Lcom/android/billingclient/api/j0;->c:Lcom/android/billingclient/api/h;

    .line 217
    .line 218
    invoke-static {v3, v1, v2}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 223
    .line 224
    .line 225
    invoke-interface {p1, v2}, Lc2/g;->onBillingSetupFinished(Lcom/android/billingclient/api/h;)V

    .line 226
    .line 227
    .line 228
    return-void
.end method

.method final synthetic r0(Landroid/os/Bundle;Lc2/h;)Ljava/lang/Object;
    .locals 8

    .line 1
    const-string v0, "BillingClient"

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    const/16 v2, 0x3e

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    iget-object v4, p0, Lcom/android/billingclient/api/e;->g:Lcom/google/android/gms/internal/play_billing/i6;

    .line 9
    .line 10
    iget-object v5, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    new-instance v6, Lcom/android/billingclient/api/e0;

    .line 17
    .line 18
    iget-object v7, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 19
    .line 20
    invoke-direct {v6, p2, v7, v3}, Lcom/android/billingclient/api/e0;-><init>(Lc2/h;Lcom/android/billingclient/api/i0;Lc2/y;)V

    .line 21
    .line 22
    .line 23
    const/16 v7, 0x12

    .line 24
    .line 25
    invoke-interface {v4, v7, v5, p1, v6}, Lcom/google/android/gms/internal/play_billing/i6;->p0(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/d6;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    const-string v4, "getBillingConfig got an exception."

    .line 31
    .line 32
    invoke-static {v0, v4, p1}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 36
    .line 37
    sget-object v0, Lcom/android/billingclient/api/j0;->j:Lcom/android/billingclient/api/h;

    .line 38
    .line 39
    invoke-static {v2, v1, v0}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p2, v0, v3}, Lc2/h;->a(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/f;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_1
    move-exception p1

    .line 51
    const-string v4, "getBillingConfig got a dead object exception (try to reconnect)."

    .line 52
    .line 53
    invoke-static {v0, v4, p1}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 57
    .line 58
    sget-object v0, Lcom/android/billingclient/api/j0;->m:Lcom/android/billingclient/api/h;

    .line 59
    .line 60
    invoke-static {v2, v1, v0}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {p2, v0, v3}, Lc2/h;->a(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/f;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-object v3
.end method

.method final synthetic s0(Lcom/android/billingclient/api/j;Lc2/l;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "BillingClient"

    .line 4
    .line 5
    new-instance v3, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/j;->c()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/j;->b()Lcom/google/android/gms/internal/play_billing/j;

    .line 15
    .line 16
    .line 17
    move-result-object v10

    .line 18
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v11

    .line 22
    const/4 v4, 0x0

    .line 23
    :goto_0
    const/4 v13, 0x0

    .line 24
    if-ge v4, v11, :cond_f

    .line 25
    .line 26
    add-int/lit8 v14, v4, 0x14

    .line 27
    .line 28
    if-le v14, v11, :cond_0

    .line 29
    .line 30
    move v5, v11

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    move v5, v14

    .line 33
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-interface {v10, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 40
    .line 41
    .line 42
    new-instance v4, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    const/4 v7, 0x0

    .line 52
    :goto_2
    if-ge v7, v5, :cond_1

    .line 53
    .line 54
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    check-cast v8, Lcom/android/billingclient/api/j$b;

    .line 59
    .line 60
    invoke-virtual {v8}, Lcom/android/billingclient/api/j$b;->b()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    add-int/lit8 v7, v7, 0x1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_1
    new-instance v8, Landroid/os/Bundle;

    .line 71
    .line 72
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v5, "ITEM_ID_LIST"

    .line 76
    .line 77
    invoke-virtual {v8, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 78
    .line 79
    .line 80
    iget-object v4, v1, Lcom/android/billingclient/api/e;->b:Ljava/lang/String;

    .line 81
    .line 82
    const-string v5, "playBillingLibraryVersion"

    .line 83
    .line 84
    invoke-virtual {v8, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :try_start_0
    iget-object v4, v1, Lcom/android/billingclient/api/e;->g:Lcom/google/android/gms/internal/play_billing/i6;

    .line 88
    .line 89
    iget-boolean v7, v1, Lcom/android/billingclient/api/e;->w:Z

    .line 90
    .line 91
    const/4 v9, 0x1

    .line 92
    if-eq v9, v7, :cond_2

    .line 93
    .line 94
    const/16 v7, 0x11

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_2
    const/16 v7, 0x14

    .line 98
    .line 99
    :goto_3
    iget-object v12, v1, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 100
    .line 101
    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v12

    .line 105
    iget-object v15, v1, Lcom/android/billingclient/api/e;->b:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v16

    .line 111
    if-eqz v16, :cond_3

    .line 112
    .line 113
    iget-object v9, v1, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 114
    .line 115
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    :cond_3
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v9

    .line 122
    if-eqz v9, :cond_4

    .line 123
    .line 124
    iget-object v9, v1, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 125
    .line 126
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    :cond_4
    new-instance v9, Landroid/os/Bundle;

    .line 130
    .line 131
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v9, v5, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string v5, "enablePendingPurchases"

    .line 138
    .line 139
    const/4 v15, 0x1

    .line 140
    invoke-virtual {v9, v5, v15}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 141
    .line 142
    .line 143
    const-string v5, "SKU_DETAILS_RESPONSE_FORMAT"

    .line 144
    .line 145
    const-string v15, "PRODUCT_DETAILS"

    .line 146
    .line 147
    invoke-virtual {v9, v5, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    new-instance v5, Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .line 154
    .line 155
    new-instance v15, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 161
    .line 162
    .line 163
    move-result v13

    .line 164
    move-object/from16 v18, v10

    .line 165
    .line 166
    const/4 v10, 0x0

    .line 167
    const/16 v17, 0x0

    .line 168
    .line 169
    const/16 v19, 0x0

    .line 170
    .line 171
    :goto_4
    if-ge v10, v13, :cond_6

    .line 172
    .line 173
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v20

    .line 177
    check-cast v20, Lcom/android/billingclient/api/j$b;

    .line 178
    .line 179
    move-object/from16 v21, v6

    .line 180
    .line 181
    const/4 v6, 0x0

    .line 182
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 186
    .line 187
    .line 188
    move-result v22

    .line 189
    const/4 v6, 0x1

    .line 190
    xor-int/lit8 v16, v22, 0x1

    .line 191
    .line 192
    or-int v19, v19, v16

    .line 193
    .line 194
    invoke-virtual/range {v20 .. v20}, Lcom/android/billingclient/api/j$b;->c()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    move/from16 v20, v11

    .line 199
    .line 200
    const-string v11, "first_party"

    .line 201
    .line 202
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    if-eqz v6, :cond_5

    .line 207
    .line 208
    const-string v6, "Serialized DocId is required for constructing ExtraParams to query ProductDetails for all first party products."

    .line 209
    .line 210
    const/4 v11, 0x0

    .line 211
    invoke-static {v11, v6}, Lcom/google/android/gms/internal/play_billing/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    const/16 v17, 0x1

    .line 218
    .line 219
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 220
    .line 221
    move/from16 v11, v20

    .line 222
    .line 223
    move-object/from16 v6, v21

    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_6
    move/from16 v20, v11

    .line 227
    .line 228
    if-eqz v19, :cond_7

    .line 229
    .line 230
    const-string v6, "SKU_OFFER_ID_TOKEN_LIST"

    .line 231
    .line 232
    invoke-virtual {v9, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 233
    .line 234
    .line 235
    :cond_7
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    if-nez v5, :cond_8

    .line 240
    .line 241
    const-string v5, "SKU_SERIALIZED_DOCID_LIST"

    .line 242
    .line 243
    invoke-virtual {v9, v5, v15}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 244
    .line 245
    .line 246
    :cond_8
    if-eqz v17, :cond_9

    .line 247
    .line 248
    const/4 v5, 0x0

    .line 249
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 250
    .line 251
    .line 252
    move-result v6

    .line 253
    if-nez v6, :cond_9

    .line 254
    .line 255
    const-string v6, "accountName"

    .line 256
    .line 257
    invoke-virtual {v9, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 258
    .line 259
    .line 260
    :cond_9
    move v5, v7

    .line 261
    move-object v6, v12

    .line 262
    move-object v7, v0

    .line 263
    const/4 v10, 0x7

    .line 264
    :try_start_1
    invoke-interface/range {v4 .. v9}, Lcom/google/android/gms/internal/play_billing/i6;->p(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 265
    .line 266
    .line 267
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 268
    const/4 v5, 0x4

    .line 269
    const-string v6, "Item is unavailable for purchase."

    .line 270
    .line 271
    if-nez v4, :cond_a

    .line 272
    .line 273
    const-string v0, "queryProductDetailsAsync got empty product details response."

    .line 274
    .line 275
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    iget-object v0, v1, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 279
    .line 280
    const/16 v2, 0x2c

    .line 281
    .line 282
    sget-object v4, Lcom/android/billingclient/api/j0;->C:Lcom/android/billingclient/api/h;

    .line 283
    .line 284
    invoke-static {v2, v10, v4}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 289
    .line 290
    .line 291
    :goto_5
    move v12, v5

    .line 292
    goto/16 :goto_9

    .line 293
    .line 294
    :cond_a
    const-string v7, "DETAILS_LIST"

    .line 295
    .line 296
    invoke-virtual {v4, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 297
    .line 298
    .line 299
    move-result v8

    .line 300
    if-nez v8, :cond_c

    .line 301
    .line 302
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/b0;->b(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    move-result v12

    .line 306
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/b0;->g(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    if-eqz v12, :cond_b

    .line 311
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .line 316
    .line 317
    const-string v4, "getSkuDetails() failed for queryProductDetailsAsync. Response code: "

    .line 318
    .line 319
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    iget-object v0, v1, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 333
    .line 334
    const/16 v2, 0x17

    .line 335
    .line 336
    invoke-static {v12, v6}, Lcom/android/billingclient/api/j0;->a(ILjava/lang/String;)Lcom/android/billingclient/api/h;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    invoke-static {v2, v10, v4}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 345
    .line 346
    .line 347
    goto/16 :goto_9

    .line 348
    .line 349
    :cond_b
    const-string v0, "getSkuDetails() returned a bundle with neither an error nor a product detail list for queryProductDetailsAsync."

    .line 350
    .line 351
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    iget-object v0, v1, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 355
    .line 356
    const/16 v2, 0x2d

    .line 357
    .line 358
    const/4 v4, 0x6

    .line 359
    invoke-static {v4, v6}, Lcom/android/billingclient/api/j0;->a(ILjava/lang/String;)Lcom/android/billingclient/api/h;

    .line 360
    .line 361
    .line 362
    move-result-object v5

    .line 363
    invoke-static {v2, v10, v5}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 368
    .line 369
    .line 370
    const/4 v12, 0x6

    .line 371
    goto/16 :goto_9

    .line 372
    .line 373
    :cond_c
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 374
    .line 375
    .line 376
    move-result-object v4

    .line 377
    if-nez v4, :cond_d

    .line 378
    .line 379
    const-string v0, "queryProductDetailsAsync got null response list"

    .line 380
    .line 381
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    iget-object v0, v1, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 385
    .line 386
    const/16 v2, 0x2e

    .line 387
    .line 388
    sget-object v4, Lcom/android/billingclient/api/j0;->C:Lcom/android/billingclient/api/h;

    .line 389
    .line 390
    invoke-static {v2, v10, v4}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 395
    .line 396
    .line 397
    goto :goto_5

    .line 398
    :cond_d
    const/4 v5, 0x0

    .line 399
    :goto_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 400
    .line 401
    .line 402
    move-result v6

    .line 403
    if-ge v5, v6, :cond_e

    .line 404
    .line 405
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v6

    .line 409
    check-cast v6, Ljava/lang/String;

    .line 410
    .line 411
    :try_start_2
    new-instance v7, Lcom/android/billingclient/api/i;

    .line 412
    .line 413
    invoke-direct {v7, v6}, Lcom/android/billingclient/api/i;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 414
    .line 415
    .line 416
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v6

    .line 420
    const-string v8, "Got product details: "

    .line 421
    .line 422
    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v6

    .line 426
    invoke-static {v2, v6}, Lcom/google/android/gms/internal/play_billing/b0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    add-int/lit8 v5, v5, 0x1

    .line 433
    .line 434
    goto :goto_6

    .line 435
    :catch_0
    move-exception v0

    .line 436
    const-string v4, "Got a JSON exception trying to decode ProductDetails. \n Exception: "

    .line 437
    .line 438
    invoke-static {v2, v4, v0}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 439
    .line 440
    .line 441
    iget-object v0, v1, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 442
    .line 443
    const/16 v2, 0x2f

    .line 444
    .line 445
    const-string v6, "Error trying to decode SkuDetails."

    .line 446
    .line 447
    const/4 v4, 0x6

    .line 448
    invoke-static {v4, v6}, Lcom/android/billingclient/api/j0;->a(ILjava/lang/String;)Lcom/android/billingclient/api/h;

    .line 449
    .line 450
    .line 451
    move-result-object v5

    .line 452
    invoke-static {v2, v10, v5}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 457
    .line 458
    .line 459
    goto :goto_8

    .line 460
    :cond_e
    move v4, v14

    .line 461
    move-object/from16 v10, v18

    .line 462
    .line 463
    move/from16 v11, v20

    .line 464
    .line 465
    goto/16 :goto_0

    .line 466
    .line 467
    :catch_1
    move-exception v0

    .line 468
    const/4 v4, 0x6

    .line 469
    goto :goto_7

    .line 470
    :catch_2
    move-exception v0

    .line 471
    const/4 v4, 0x6

    .line 472
    const/4 v10, 0x7

    .line 473
    :goto_7
    const-string v5, "queryProductDetailsAsync got a remote exception (try to reconnect)."

    .line 474
    .line 475
    invoke-static {v2, v5, v0}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 476
    .line 477
    .line 478
    iget-object v0, v1, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 479
    .line 480
    const/16 v2, 0x2b

    .line 481
    .line 482
    sget-object v5, Lcom/android/billingclient/api/j0;->j:Lcom/android/billingclient/api/h;

    .line 483
    .line 484
    invoke-static {v2, v10, v5}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 489
    .line 490
    .line 491
    const-string v6, "An internal error occurred."

    .line 492
    .line 493
    :goto_8
    move v12, v4

    .line 494
    goto :goto_9

    .line 495
    :cond_f
    const-string v6, ""

    .line 496
    .line 497
    const/4 v12, 0x0

    .line 498
    :goto_9
    invoke-static {v12, v6}, Lcom/android/billingclient/api/j0;->a(ILjava/lang/String;)Lcom/android/billingclient/api/h;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    move-object/from16 v2, p2

    .line 503
    .line 504
    invoke-interface {v2, v0, v3}, Lc2/l;->onProductDetailsResponse(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 505
    .line 506
    .line 507
    const/4 v2, 0x0

    .line 508
    return-object v2
.end method

.method final synthetic t0(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lc2/r;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "BillingClient"

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v5, 0x0

    .line 15
    :goto_0
    const/4 v6, 0x0

    .line 16
    if-ge v5, v3, :cond_9

    .line 17
    .line 18
    add-int/lit8 v7, v5, 0x14

    .line 19
    .line 20
    if-le v7, v3, :cond_0

    .line 21
    .line 22
    move v8, v3

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    move v8, v7

    .line 25
    :goto_1
    new-instance v9, Ljava/util/ArrayList;

    .line 26
    .line 27
    move-object/from16 v10, p2

    .line 28
    .line 29
    invoke-interface {v10, v5, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 34
    .line 35
    .line 36
    new-instance v15, Landroid/os/Bundle;

    .line 37
    .line 38
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v5, "ITEM_ID_LIST"

    .line 42
    .line 43
    invoke-virtual {v15, v5, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 44
    .line 45
    .line 46
    iget-object v5, v1, Lcom/android/billingclient/api/e;->b:Ljava/lang/String;

    .line 47
    .line 48
    const-string v8, "playBillingLibraryVersion"

    .line 49
    .line 50
    invoke-virtual {v15, v8, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/16 v5, 0x8

    .line 54
    .line 55
    :try_start_0
    iget-boolean v9, v1, Lcom/android/billingclient/api/e;->o:Z

    .line 56
    .line 57
    if-eqz v9, :cond_3

    .line 58
    .line 59
    iget-object v11, v1, Lcom/android/billingclient/api/e;->g:Lcom/google/android/gms/internal/play_billing/i6;

    .line 60
    .line 61
    iget-object v9, v1, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v13

    .line 67
    iget v9, v1, Lcom/android/billingclient/api/e;->k:I

    .line 68
    .line 69
    iget-object v12, v1, Lcom/android/billingclient/api/e;->b:Ljava/lang/String;

    .line 70
    .line 71
    new-instance v14, Landroid/os/Bundle;

    .line 72
    .line 73
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 74
    .line 75
    .line 76
    const/16 v4, 0x9

    .line 77
    .line 78
    if-lt v9, v4, :cond_1

    .line 79
    .line 80
    invoke-virtual {v14, v8, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    if-lt v9, v4, :cond_2

    .line 84
    .line 85
    const-string v4, "enablePendingPurchases"

    .line 86
    .line 87
    const/4 v8, 0x1

    .line 88
    invoke-virtual {v14, v4, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    .line 90
    .line 91
    :cond_2
    const/16 v12, 0xa

    .line 92
    .line 93
    move-object v4, v14

    .line 94
    move-object/from16 v14, p1

    .line 95
    .line 96
    move-object/from16 v16, v4

    .line 97
    .line 98
    invoke-interface/range {v11 .. v16}, Lcom/google/android/gms/internal/play_billing/i6;->p(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    move-object/from16 v11, p1

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_3
    iget-object v4, v1, Lcom/android/billingclient/api/e;->g:Lcom/google/android/gms/internal/play_billing/i6;

    .line 106
    .line 107
    iget-object v8, v1, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 108
    .line 109
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    const/4 v9, 0x3

    .line 114
    move-object/from16 v11, p1

    .line 115
    .line 116
    invoke-interface {v4, v9, v8, v11, v15}, Lcom/google/android/gms/internal/play_billing/i6;->C0(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 117
    .line 118
    .line 119
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    :goto_2
    const/4 v8, 0x4

    .line 121
    const-string v9, "Item is unavailable for purchase."

    .line 122
    .line 123
    if-nez v4, :cond_4

    .line 124
    .line 125
    const-string v0, "querySkuDetailsAsync got null sku details list"

    .line 126
    .line 127
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, v1, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 131
    .line 132
    const/16 v2, 0x2c

    .line 133
    .line 134
    sget-object v3, Lcom/android/billingclient/api/j0;->C:Lcom/android/billingclient/api/h;

    .line 135
    .line 136
    invoke-static {v2, v5, v3}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 141
    .line 142
    .line 143
    :goto_3
    move-object v0, v6

    .line 144
    move v4, v8

    .line 145
    goto/16 :goto_6

    .line 146
    .line 147
    :cond_4
    const-string v12, "DETAILS_LIST"

    .line 148
    .line 149
    invoke-virtual {v4, v12}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v13

    .line 153
    const/4 v14, 0x6

    .line 154
    if-nez v13, :cond_6

    .line 155
    .line 156
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/b0;->b(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/b0;->g(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    if-eqz v3, :cond_5

    .line 165
    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v7, "getSkuDetails() failed. Response code: "

    .line 172
    .line 173
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object v2, v1, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 187
    .line 188
    const/16 v4, 0x17

    .line 189
    .line 190
    invoke-static {v3, v9}, Lcom/android/billingclient/api/j0;->a(ILjava/lang/String;)Lcom/android/billingclient/api/h;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    invoke-static {v4, v5, v7}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    invoke-interface {v2, v4}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 199
    .line 200
    .line 201
    move v4, v3

    .line 202
    goto/16 :goto_6

    .line 203
    .line 204
    :cond_5
    const-string v3, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    .line 205
    .line 206
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iget-object v2, v1, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 210
    .line 211
    const/16 v3, 0x2d

    .line 212
    .line 213
    invoke-static {v14, v9}, Lcom/android/billingclient/api/j0;->a(ILjava/lang/String;)Lcom/android/billingclient/api/h;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-static {v3, v5, v4}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-interface {v2, v3}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 222
    .line 223
    .line 224
    :goto_4
    move v4, v14

    .line 225
    goto/16 :goto_6

    .line 226
    .line 227
    :cond_6
    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    if-nez v4, :cond_7

    .line 232
    .line 233
    const-string v0, "querySkuDetailsAsync got null response list"

    .line 234
    .line 235
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    iget-object v0, v1, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 239
    .line 240
    const/16 v2, 0x2e

    .line 241
    .line 242
    sget-object v3, Lcom/android/billingclient/api/j0;->C:Lcom/android/billingclient/api/h;

    .line 243
    .line 244
    invoke-static {v2, v5, v3}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 249
    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_7
    const/4 v8, 0x0

    .line 253
    :goto_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    if-ge v8, v9, :cond_8

    .line 258
    .line 259
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v9

    .line 263
    check-cast v9, Ljava/lang/String;

    .line 264
    .line 265
    :try_start_1
    new-instance v12, Lcom/android/billingclient/api/SkuDetails;

    .line 266
    .line 267
    invoke-direct {v12, v9}, Lcom/android/billingclient/api/SkuDetails;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 268
    .line 269
    .line 270
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v9

    .line 274
    const-string v13, "Got sku details: "

    .line 275
    .line 276
    invoke-virtual {v13, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v9

    .line 280
    invoke-static {v2, v9}, Lcom/google/android/gms/internal/play_billing/b0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    add-int/lit8 v8, v8, 0x1

    .line 287
    .line 288
    goto :goto_5

    .line 289
    :catch_0
    move-exception v0

    .line 290
    const-string v3, "Got a JSON exception trying to decode SkuDetails."

    .line 291
    .line 292
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    .line 294
    .line 295
    iget-object v0, v1, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 296
    .line 297
    const/16 v2, 0x2f

    .line 298
    .line 299
    const-string v9, "Error trying to decode SkuDetails."

    .line 300
    .line 301
    invoke-static {v14, v9}, Lcom/android/billingclient/api/j0;->a(ILjava/lang/String;)Lcom/android/billingclient/api/h;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-static {v2, v5, v3}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 310
    .line 311
    .line 312
    move-object v0, v6

    .line 313
    goto :goto_4

    .line 314
    :cond_8
    move v5, v7

    .line 315
    goto/16 :goto_0

    .line 316
    .line 317
    :catch_1
    move-exception v0

    .line 318
    const-string v3, "querySkuDetailsAsync got a remote exception (try to reconnect)."

    .line 319
    .line 320
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 321
    .line 322
    .line 323
    iget-object v0, v1, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 324
    .line 325
    const/16 v2, 0x2b

    .line 326
    .line 327
    sget-object v3, Lcom/android/billingclient/api/j0;->m:Lcom/android/billingclient/api/h;

    .line 328
    .line 329
    invoke-static {v2, v5, v3}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 334
    .line 335
    .line 336
    const-string v9, "Service connection is disconnected."

    .line 337
    .line 338
    const/4 v4, -0x1

    .line 339
    move-object v0, v6

    .line 340
    goto :goto_6

    .line 341
    :cond_9
    const-string v9, ""

    .line 342
    .line 343
    const/4 v4, 0x0

    .line 344
    :goto_6
    invoke-static {v4, v9}, Lcom/android/billingclient/api/j0;->a(ILjava/lang/String;)Lcom/android/billingclient/api/h;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    move-object/from16 v3, p4

    .line 349
    .line 350
    invoke-interface {v3, v2, v0}, Lc2/r;->a(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 351
    .line 352
    .line 353
    return-object v6
.end method

.method final synthetic u0(Lc2/f;)Ljava/lang/Void;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/e;->g:Lcom/google/android/gms/internal/play_billing/i6;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iget-object v3, p0, Lcom/android/billingclient/api/e;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/b0;->e(Ljava/lang/String;)Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    new-instance v4, Lcom/android/billingclient/api/c0;

    .line 17
    .line 18
    iget-object v5, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 19
    .line 20
    invoke-direct {v4, p1, v5, v0}, Lcom/android/billingclient/api/c0;-><init>(Lc2/f;Lcom/android/billingclient/api/i0;Lc2/v;)V

    .line 21
    .line 22
    .line 23
    const/16 v5, 0x15

    .line 24
    .line 25
    invoke-interface {v1, v5, v2, v3, v4}, Lcom/google/android/gms/internal/play_billing/i6;->x0(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/z1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    iget-object v1, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 30
    .line 31
    sget-object v2, Lcom/android/billingclient/api/j0;->j:Lcom/android/billingclient/api/h;

    .line 32
    .line 33
    const/16 v3, 0x46

    .line 34
    .line 35
    const/16 v4, 0xf

    .line 36
    .line 37
    invoke-static {v3, v4, v2}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-interface {v1, v3}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v2, v0}, Lc2/f;->a(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/b;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-object v0
.end method

.method final synthetic v0(Lc2/d;)Ljava/lang/Void;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/e;->g:Lcom/google/android/gms/internal/play_billing/i6;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iget-object v3, p0, Lcom/android/billingclient/api/e;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/b0;->e(Ljava/lang/String;)Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    new-instance v4, Lcom/android/billingclient/api/f0;

    .line 17
    .line 18
    iget-object v5, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 19
    .line 20
    invoke-direct {v4, p1, v5, v0}, Lcom/android/billingclient/api/f0;-><init>(Lc2/d;Lcom/android/billingclient/api/i0;Lc2/z;)V

    .line 21
    .line 22
    .line 23
    const/16 v5, 0x15

    .line 24
    .line 25
    invoke-interface {v1, v5, v2, v3, v4}, Lcom/google/android/gms/internal/play_billing/i6;->R0(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/f6;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    iget-object v1, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 30
    .line 31
    sget-object v2, Lcom/android/billingclient/api/j0;->j:Lcom/android/billingclient/api/h;

    .line 32
    .line 33
    const/16 v3, 0x45

    .line 34
    .line 35
    const/16 v4, 0xe

    .line 36
    .line 37
    invoke-static {v3, v4, v2}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-interface {v1, v3}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v2}, Lc2/d;->a(Lcom/android/billingclient/api/h;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-object v0
.end method

.method final synthetic w0(Landroid/app/Activity;Landroid/os/ResultReceiver;Lc2/e;)Ljava/lang/Void;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/e;->g:Lcom/google/android/gms/internal/play_billing/i6;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/android/billingclient/api/e;->e:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iget-object v3, p0, Lcom/android/billingclient/api/e;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/b0;->e(Ljava/lang/String;)Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    new-instance v4, Lcom/android/billingclient/api/d0;

    .line 17
    .line 18
    new-instance v5, Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    invoke-direct {v5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v4, v5, p2, v0}, Lcom/android/billingclient/api/d0;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/ResultReceiver;Lc2/x;)V

    .line 24
    .line 25
    .line 26
    const/16 p1, 0x15

    .line 27
    .line 28
    invoke-interface {v1, p1, v2, v3, v4}, Lcom/google/android/gms/internal/play_billing/i6;->C(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/i5;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    iget-object p1, p0, Lcom/android/billingclient/api/e;->f:Lcom/android/billingclient/api/i0;

    .line 33
    .line 34
    sget-object p2, Lcom/android/billingclient/api/j0;->j:Lcom/android/billingclient/api/h;

    .line 35
    .line 36
    const/16 v1, 0x4a

    .line 37
    .line 38
    const/16 v2, 0x10

    .line 39
    .line 40
    invoke-static {v1, v2, p2}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p3, p2}, Lc2/e;->a(Lcom/android/billingclient/api/h;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-object v0
.end method
