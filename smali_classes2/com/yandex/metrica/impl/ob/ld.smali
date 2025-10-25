.class public final Lcom/yandex/metrica/impl/ob/ld;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/networktasks/api/ExponentialBackoffPolicy;


# instance fields
.field private final a:Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ld;->a:Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public canBeExecuted(Lcom/yandex/metrica/networktasks/api/RetryPolicyConfig;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ld;->a:Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;->c(Lcom/yandex/metrica/networktasks/api/RetryPolicyConfig;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onAllHostsAttemptsFinished(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ld;->a:Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;->a()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ld;->a:Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;->b()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public onHostAttemptFinished(Z)V
    .locals 0

    return-void
.end method
