.class public final Lcom/yandex/metrica/networktasks/impl/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/yandex/metrica/networktasks/api/NetworkTask;

.field private final b:Lcom/yandex/metrica/networktasks/impl/c;

.field private final c:Lcom/yandex/metrica/networktasks/impl/d;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/networktasks/api/NetworkTask;Lcom/yandex/metrica/networktasks/impl/c;Lcom/yandex/metrica/networktasks/impl/d;)V
    .locals 1

    const-string v0, "networkTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootThreadStateSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskPerformingStrategy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/networktasks/impl/f;->a:Lcom/yandex/metrica/networktasks/api/NetworkTask;

    iput-object p2, p0, Lcom/yandex/metrica/networktasks/impl/f;->b:Lcom/yandex/metrica/networktasks/impl/c;

    iput-object p3, p0, Lcom/yandex/metrica/networktasks/impl/f;->c:Lcom/yandex/metrica/networktasks/impl/d;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/networktasks/impl/f;->a:Lcom/yandex/metrica/networktasks/api/NetworkTask;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/networktasks/api/NetworkTask;->f()Lcom/yandex/metrica/networktasks/api/ExponentialBackoffPolicy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "networkTask.exponentialBackoffPolicy"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/yandex/metrica/networktasks/impl/f;->a:Lcom/yandex/metrica/networktasks/api/NetworkTask;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/yandex/metrica/networktasks/api/NetworkTask;->d()Lcom/yandex/metrica/networktasks/api/IExecutionPolicy;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "networkTask.connectionExecutionPolicy"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/yandex/metrica/networktasks/impl/f;->b:Lcom/yandex/metrica/networktasks/impl/c;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/yandex/metrica/networktasks/impl/c;->a()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    invoke-interface {v1}, Lcom/yandex/metrica/networktasks/api/IExecutionPolicy;->canBeExecuted()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    iget-object v1, p0, Lcom/yandex/metrica/networktasks/impl/f;->a:Lcom/yandex/metrica/networktasks/api/NetworkTask;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/yandex/metrica/networktasks/api/NetworkTask;->i()Lcom/yandex/metrica/networktasks/api/RetryPolicyConfig;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v0, v1}, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffPolicy;->canBeExecuted(Lcom/yandex/metrica/networktasks/api/RetryPolicyConfig;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    iget-object v1, p0, Lcom/yandex/metrica/networktasks/impl/f;->a:Lcom/yandex/metrica/networktasks/api/NetworkTask;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/yandex/metrica/networktasks/api/NetworkTask;->n()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    const/4 v2, 0x0

    .line 57
    :goto_0
    iget-object v4, p0, Lcom/yandex/metrica/networktasks/impl/f;->b:Lcom/yandex/metrica/networktasks/impl/c;

    .line 58
    .line 59
    invoke-virtual {v4}, Lcom/yandex/metrica/networktasks/impl/c;->a()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    const/4 v5, 0x1

    .line 64
    if-eqz v4, :cond_1

    .line 65
    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    iget-object v1, p0, Lcom/yandex/metrica/networktasks/impl/f;->a:Lcom/yandex/metrica/networktasks/api/NetworkTask;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/yandex/metrica/networktasks/api/NetworkTask;->i()Lcom/yandex/metrica/networktasks/api/RetryPolicyConfig;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-interface {v0, v1}, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffPolicy;->canBeExecuted(Lcom/yandex/metrica/networktasks/api/RetryPolicyConfig;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    iget-object v1, p0, Lcom/yandex/metrica/networktasks/impl/f;->c:Lcom/yandex/metrica/networktasks/impl/d;

    .line 81
    .line 82
    iget-object v2, p0, Lcom/yandex/metrica/networktasks/impl/f;->a:Lcom/yandex/metrica/networktasks/api/NetworkTask;

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/networktasks/impl/d;->b(Lcom/yandex/metrica/networktasks/api/NetworkTask;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-nez v1, :cond_0

    .line 97
    .line 98
    iget-object v1, p0, Lcom/yandex/metrica/networktasks/impl/f;->a:Lcom/yandex/metrica/networktasks/api/NetworkTask;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/yandex/metrica/networktasks/api/NetworkTask;->v()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_0

    .line 105
    .line 106
    move v1, v5

    .line 107
    goto :goto_1

    .line 108
    :cond_0
    move v1, v3

    .line 109
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    invoke-interface {v0, v4}, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffPolicy;->onHostAttemptFinished(Z)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_1
    if-eqz v2, :cond_2

    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-interface {v0, v1}, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffPolicy;->onAllHostsAttemptsFinished(Z)V

    .line 124
    .line 125
    .line 126
    :cond_2
    move v3, v5

    .line 127
    :cond_3
    if-nez v3, :cond_4

    .line 128
    .line 129
    iget-object v0, p0, Lcom/yandex/metrica/networktasks/impl/f;->a:Lcom/yandex/metrica/networktasks/api/NetworkTask;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/yandex/metrica/networktasks/api/NetworkTask;->r()V

    .line 132
    .line 133
    .line 134
    :cond_4
    return-void
.end method
