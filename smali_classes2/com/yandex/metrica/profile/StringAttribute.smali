.class public Lcom/yandex/metrica/profile/StringAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/fn;

.field private final b:Lcom/yandex/metrica/impl/ob/Pe;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/fn;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Je;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/Pe;

    .line 5
    .line 6
    invoke-direct {v0, p1, p3, p4}, Lcom/yandex/metrica/impl/ob/Pe;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Je;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/profile/StringAttribute;->b:Lcom/yandex/metrica/impl/ob/Pe;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/yandex/metrica/profile/StringAttribute;->a:Lcom/yandex/metrica/impl/ob/fn;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public withValue(Ljava/lang/String;)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
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
    new-instance v7, Lcom/yandex/metrica/impl/ob/Ye;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/profile/StringAttribute;->b:Lcom/yandex/metrica/impl/ob/Pe;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Pe;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v4, p0, Lcom/yandex/metrica/profile/StringAttribute;->a:Lcom/yandex/metrica/impl/ob/fn;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/yandex/metrica/profile/StringAttribute;->b:Lcom/yandex/metrica/impl/ob/Pe;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Pe;->b()Lcom/yandex/metrica/impl/ob/Kn;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    new-instance v6, Lcom/yandex/metrica/impl/ob/Me;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/yandex/metrica/profile/StringAttribute;->b:Lcom/yandex/metrica/impl/ob/Pe;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Pe;->c()Lcom/yandex/metrica/impl/ob/Je;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v6, v1}, Lcom/yandex/metrica/impl/ob/Me;-><init>(Lcom/yandex/metrica/impl/ob/Je;)V

    .line 28
    .line 29
    .line 30
    move-object v1, v7

    .line 31
    move-object v3, p1

    .line 32
    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/Ye;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/fn;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Ke;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v7}, Lcom/yandex/metrica/profile/UserProfileUpdate;-><init>(Lcom/yandex/metrica/impl/ob/bf;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public withValueIfUndefined(Ljava/lang/String;)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
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
    new-instance v7, Lcom/yandex/metrica/impl/ob/Ye;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/profile/StringAttribute;->b:Lcom/yandex/metrica/impl/ob/Pe;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Pe;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v4, p0, Lcom/yandex/metrica/profile/StringAttribute;->a:Lcom/yandex/metrica/impl/ob/fn;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/yandex/metrica/profile/StringAttribute;->b:Lcom/yandex/metrica/impl/ob/Pe;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Pe;->b()Lcom/yandex/metrica/impl/ob/Kn;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    new-instance v6, Lcom/yandex/metrica/impl/ob/We;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/yandex/metrica/profile/StringAttribute;->b:Lcom/yandex/metrica/impl/ob/Pe;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Pe;->c()Lcom/yandex/metrica/impl/ob/Je;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v6, v1}, Lcom/yandex/metrica/impl/ob/We;-><init>(Lcom/yandex/metrica/impl/ob/Je;)V

    .line 28
    .line 29
    .line 30
    move-object v1, v7

    .line 31
    move-object v3, p1

    .line 32
    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/Ye;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/fn;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Ke;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v7}, Lcom/yandex/metrica/profile/UserProfileUpdate;-><init>(Lcom/yandex/metrica/impl/ob/bf;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public withValueReset()Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 6
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
    iget-object v2, p0, Lcom/yandex/metrica/profile/StringAttribute;->b:Lcom/yandex/metrica/impl/ob/Pe;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Pe;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/yandex/metrica/profile/StringAttribute;->b:Lcom/yandex/metrica/impl/ob/Pe;

    .line 12
    .line 13
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/Pe;->b()Lcom/yandex/metrica/impl/ob/Kn;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v4, p0, Lcom/yandex/metrica/profile/StringAttribute;->b:Lcom/yandex/metrica/impl/ob/Pe;

    .line 18
    .line 19
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/Pe;->c()Lcom/yandex/metrica/impl/ob/Je;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-direct {v1, v5, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/Ve;-><init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Je;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Lcom/yandex/metrica/profile/UserProfileUpdate;-><init>(Lcom/yandex/metrica/impl/ob/bf;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method
