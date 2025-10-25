.class public final Lcom/android/billingclient/api/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private volatile a:Lcom/android/billingclient/api/n0;

.field private final b:Landroid/content/Context;

.field private volatile c:Lc2/o;

.field private volatile d:Lc2/s;

.field private volatile e:Z

.field private volatile f:Z


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Lc2/c1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/d$a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/billingclient/api/d;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/billingclient/api/d$a;->b:Landroid/content/Context;

    .line 4
    .line 5
    if-eqz v1, :cond_7

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/billingclient/api/d$a;->c:Lc2/o;

    .line 8
    .line 9
    if-nez v1, :cond_3

    .line 10
    .line 11
    iget-object v1, v0, Lcom/android/billingclient/api/d$a;->d:Lc2/s;

    .line 12
    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    iget-boolean v1, v0, Lcom/android/billingclient/api/d$a;->e:Z

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    iget-boolean v1, v0, Lcom/android/billingclient/api/d$a;->f:Z

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string v2, "Please provide a valid listener for purchases updates."

    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v1

    .line 32
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/billingclient/api/e;

    .line 33
    .line 34
    iget-object v2, v0, Lcom/android/billingclient/api/d$a;->b:Landroid/content/Context;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-direct {v1, v3, v2, v3, v3}, Lcom/android/billingclient/api/e;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/billingclient/api/i0;Ljava/util/concurrent/ExecutorService;)V

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string v2, "Please provide a valid listener for Google Play Billing purchases updates when enabling User Choice Billing."

    .line 44
    .line 45
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v1

    .line 49
    :cond_3
    iget-object v1, v0, Lcom/android/billingclient/api/d$a;->a:Lcom/android/billingclient/api/n0;

    .line 50
    .line 51
    if-eqz v1, :cond_6

    .line 52
    .line 53
    iget-object v1, v0, Lcom/android/billingclient/api/d$a;->c:Lc2/o;

    .line 54
    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    iget-object v1, v0, Lcom/android/billingclient/api/d$a;->d:Lc2/s;

    .line 58
    .line 59
    if-nez v1, :cond_4

    .line 60
    .line 61
    new-instance v1, Lcom/android/billingclient/api/e;

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    iget-object v4, v0, Lcom/android/billingclient/api/d$a;->a:Lcom/android/billingclient/api/n0;

    .line 65
    .line 66
    iget-object v5, v0, Lcom/android/billingclient/api/d$a;->b:Landroid/content/Context;

    .line 67
    .line 68
    iget-object v6, v0, Lcom/android/billingclient/api/d$a;->c:Lc2/o;

    .line 69
    .line 70
    const/4 v7, 0x0

    .line 71
    const/4 v8, 0x0

    .line 72
    const/4 v9, 0x0

    .line 73
    move-object v2, v1

    .line 74
    invoke-direct/range {v2 .. v9}, Lcom/android/billingclient/api/e;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/n0;Landroid/content/Context;Lc2/o;Lc2/c;Lcom/android/billingclient/api/i0;Ljava/util/concurrent/ExecutorService;)V

    .line 75
    .line 76
    .line 77
    return-object v1

    .line 78
    :cond_4
    new-instance v1, Lcom/android/billingclient/api/e;

    .line 79
    .line 80
    const/4 v11, 0x0

    .line 81
    iget-object v12, v0, Lcom/android/billingclient/api/d$a;->a:Lcom/android/billingclient/api/n0;

    .line 82
    .line 83
    iget-object v13, v0, Lcom/android/billingclient/api/d$a;->b:Landroid/content/Context;

    .line 84
    .line 85
    iget-object v14, v0, Lcom/android/billingclient/api/d$a;->c:Lc2/o;

    .line 86
    .line 87
    iget-object v15, v0, Lcom/android/billingclient/api/d$a;->d:Lc2/s;

    .line 88
    .line 89
    const/16 v16, 0x0

    .line 90
    .line 91
    const/16 v17, 0x0

    .line 92
    .line 93
    move-object v10, v1

    .line 94
    invoke-direct/range {v10 .. v17}, Lcom/android/billingclient/api/e;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/n0;Landroid/content/Context;Lc2/o;Lc2/s;Lcom/android/billingclient/api/i0;Ljava/util/concurrent/ExecutorService;)V

    .line 95
    .line 96
    .line 97
    return-object v1

    .line 98
    :cond_5
    new-instance v1, Lcom/android/billingclient/api/e;

    .line 99
    .line 100
    const/4 v3, 0x0

    .line 101
    iget-object v4, v0, Lcom/android/billingclient/api/d$a;->a:Lcom/android/billingclient/api/n0;

    .line 102
    .line 103
    iget-object v5, v0, Lcom/android/billingclient/api/d$a;->b:Landroid/content/Context;

    .line 104
    .line 105
    const/4 v6, 0x0

    .line 106
    const/4 v7, 0x0

    .line 107
    const/4 v8, 0x0

    .line 108
    move-object v2, v1

    .line 109
    invoke-direct/range {v2 .. v8}, Lcom/android/billingclient/api/e;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/n0;Landroid/content/Context;Lc2/l0;Lcom/android/billingclient/api/i0;Ljava/util/concurrent/ExecutorService;)V

    .line 110
    .line 111
    .line 112
    return-object v1

    .line 113
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 114
    .line 115
    const-string v2, "Pending purchases for one-time products must be supported."

    .line 116
    .line 117
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v1

    .line 121
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 122
    .line 123
    const-string v2, "Please provide a valid Context."

    .line 124
    .line 125
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v1
.end method

.method public b()Lcom/android/billingclient/api/d$a;
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/billingclient/api/d$a;->e:Z

    return-object p0
.end method

.method public c()Lcom/android/billingclient/api/d$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/billingclient/api/m0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/billingclient/api/m0;-><init>(Lc2/o0;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/billingclient/api/m0;->a()Lcom/android/billingclient/api/m0;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/billingclient/api/m0;->b()Lcom/android/billingclient/api/n0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/billingclient/api/d$a;->a:Lcom/android/billingclient/api/n0;

    .line 15
    .line 16
    return-object p0
.end method

.method public d(Lc2/s;)Lcom/android/billingclient/api/d$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/d$a;->d:Lc2/s;

    return-object p0
.end method

.method public e(Lc2/o;)Lcom/android/billingclient/api/d$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/d$a;->c:Lc2/o;

    return-object p0
.end method
