.class public final Lcom/yandex/metrica/profile/NumberAttribute;
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
    iput-object v0, p0, Lcom/yandex/metrica/profile/NumberAttribute;->a:Lcom/yandex/metrica/impl/ob/Pe;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public withValue(D)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 8
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
    new-instance v7, Lcom/yandex/metrica/impl/ob/Te;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/profile/NumberAttribute;->a:Lcom/yandex/metrica/impl/ob/Pe;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Pe;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v5, Lcom/yandex/metrica/impl/ob/Qe;

    .line 12
    .line 13
    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/Qe;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v6, Lcom/yandex/metrica/impl/ob/Me;

    .line 17
    .line 18
    new-instance v1, Lcom/yandex/metrica/impl/ob/Re;

    .line 19
    .line 20
    new-instance v3, Lcom/yandex/metrica/impl/ob/Wm;

    .line 21
    .line 22
    const/16 v4, 0x64

    .line 23
    .line 24
    invoke-direct {v3, v4}, Lcom/yandex/metrica/impl/ob/Wm;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v3}, Lcom/yandex/metrica/impl/ob/Re;-><init>(Lcom/yandex/metrica/impl/ob/Wm;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v6, v1}, Lcom/yandex/metrica/impl/ob/Me;-><init>(Lcom/yandex/metrica/impl/ob/Je;)V

    .line 31
    .line 32
    .line 33
    move-object v1, v7

    .line 34
    move-wide v3, p1

    .line 35
    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/Te;-><init>(Ljava/lang/String;DLcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Ke;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v7}, Lcom/yandex/metrica/profile/UserProfileUpdate;-><init>(Lcom/yandex/metrica/impl/ob/bf;)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public withValueIfUndefined(D)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 8
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
    new-instance v7, Lcom/yandex/metrica/impl/ob/Te;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/profile/NumberAttribute;->a:Lcom/yandex/metrica/impl/ob/Pe;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Pe;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v5, Lcom/yandex/metrica/impl/ob/Qe;

    .line 12
    .line 13
    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/Qe;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v6, Lcom/yandex/metrica/impl/ob/We;

    .line 17
    .line 18
    new-instance v1, Lcom/yandex/metrica/impl/ob/Re;

    .line 19
    .line 20
    new-instance v3, Lcom/yandex/metrica/impl/ob/Wm;

    .line 21
    .line 22
    const/16 v4, 0x64

    .line 23
    .line 24
    invoke-direct {v3, v4}, Lcom/yandex/metrica/impl/ob/Wm;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v3}, Lcom/yandex/metrica/impl/ob/Re;-><init>(Lcom/yandex/metrica/impl/ob/Wm;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v6, v1}, Lcom/yandex/metrica/impl/ob/We;-><init>(Lcom/yandex/metrica/impl/ob/Je;)V

    .line 31
    .line 32
    .line 33
    move-object v1, v7

    .line 34
    move-wide v3, p1

    .line 35
    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/Te;-><init>(Ljava/lang/String;DLcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Ke;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v7}, Lcom/yandex/metrica/profile/UserProfileUpdate;-><init>(Lcom/yandex/metrica/impl/ob/bf;)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public withValueReset()Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    new-instance v1, Lcom/yandex/metrica/impl/ob/Ve;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/yandex/metrica/profile/NumberAttribute;->a:Lcom/yandex/metrica/impl/ob/Pe;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Pe;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v3, Lcom/yandex/metrica/impl/ob/Qe;

    .line 12
    .line 13
    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/Qe;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v4, Lcom/yandex/metrica/impl/ob/Re;

    .line 17
    .line 18
    new-instance v5, Lcom/yandex/metrica/impl/ob/Wm;

    .line 19
    .line 20
    const/16 v6, 0x64

    .line 21
    .line 22
    invoke-direct {v5, v6}, Lcom/yandex/metrica/impl/ob/Wm;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v4, v5}, Lcom/yandex/metrica/impl/ob/Re;-><init>(Lcom/yandex/metrica/impl/ob/Wm;)V

    .line 26
    .line 27
    .line 28
    const/4 v5, 0x1

    .line 29
    invoke-direct {v1, v5, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/Ve;-><init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Je;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/yandex/metrica/profile/UserProfileUpdate;-><init>(Lcom/yandex/metrica/impl/ob/bf;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method
