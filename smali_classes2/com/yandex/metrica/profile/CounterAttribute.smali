.class public final Lcom/yandex/metrica/profile/CounterAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Pe;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Je;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/Pe;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/Pe;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Je;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/profile/CounterAttribute;->a:Lcom/yandex/metrica/impl/ob/Pe;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public withDelta(D)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/bf;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/profile/UserProfileUpdate;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/Oe;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/yandex/metrica/profile/CounterAttribute;->a:Lcom/yandex/metrica/impl/ob/Pe;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Pe;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v1, v2, p1, p2}, Lcom/yandex/metrica/impl/ob/Oe;-><init>(Ljava/lang/String;D)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/yandex/metrica/profile/UserProfileUpdate;-><init>(Lcom/yandex/metrica/impl/ob/bf;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method
