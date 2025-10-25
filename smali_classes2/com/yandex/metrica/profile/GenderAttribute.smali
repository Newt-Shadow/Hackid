.class public Lcom/yandex/metrica/profile/GenderAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/profile/GenderAttribute$Gender;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Pe;


# direct methods
.method constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/Pe;

    .line 5
    .line 6
    new-instance v1, Lcom/yandex/metrica/impl/ob/Dn;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Dn;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/yandex/metrica/impl/ob/Xe;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/Xe;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "appmetrica_gender"

    .line 17
    .line 18
    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/metrica/impl/ob/Pe;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Je;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/yandex/metrica/profile/GenderAttribute;->a:Lcom/yandex/metrica/impl/ob/Pe;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public withValue(Lcom/yandex/metrica/profile/GenderAttribute$Gender;)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/profile/GenderAttribute$Gender;",
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
    iget-object v1, p0, Lcom/yandex/metrica/profile/GenderAttribute;->a:Lcom/yandex/metrica/impl/ob/Pe;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Pe;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p1}, Lcom/yandex/metrica/profile/GenderAttribute$Gender;->getStringValue()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    new-instance v4, Lcom/yandex/metrica/impl/ob/Ym;

    .line 16
    .line 17
    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/Ym;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/yandex/metrica/profile/GenderAttribute;->a:Lcom/yandex/metrica/impl/ob/Pe;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Pe;->b()Lcom/yandex/metrica/impl/ob/Kn;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    new-instance v6, Lcom/yandex/metrica/impl/ob/Me;

    .line 27
    .line 28
    iget-object p1, p0, Lcom/yandex/metrica/profile/GenderAttribute;->a:Lcom/yandex/metrica/impl/ob/Pe;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Pe;->c()Lcom/yandex/metrica/impl/ob/Je;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v6, p1}, Lcom/yandex/metrica/impl/ob/Me;-><init>(Lcom/yandex/metrica/impl/ob/Je;)V

    .line 35
    .line 36
    .line 37
    move-object v1, v7

    .line 38
    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/Ye;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/fn;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Ke;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v7}, Lcom/yandex/metrica/profile/UserProfileUpdate;-><init>(Lcom/yandex/metrica/impl/ob/bf;)V

    .line 42
    .line 43
    .line 44
    return-object v0
.end method

.method public withValueIfUndefined(Lcom/yandex/metrica/profile/GenderAttribute$Gender;)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/profile/GenderAttribute$Gender;",
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
    iget-object v1, p0, Lcom/yandex/metrica/profile/GenderAttribute;->a:Lcom/yandex/metrica/impl/ob/Pe;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Pe;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p1}, Lcom/yandex/metrica/profile/GenderAttribute$Gender;->getStringValue()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    new-instance v4, Lcom/yandex/metrica/impl/ob/Ym;

    .line 16
    .line 17
    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/Ym;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/yandex/metrica/profile/GenderAttribute;->a:Lcom/yandex/metrica/impl/ob/Pe;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Pe;->b()Lcom/yandex/metrica/impl/ob/Kn;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    new-instance v6, Lcom/yandex/metrica/impl/ob/We;

    .line 27
    .line 28
    iget-object p1, p0, Lcom/yandex/metrica/profile/GenderAttribute;->a:Lcom/yandex/metrica/impl/ob/Pe;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Pe;->c()Lcom/yandex/metrica/impl/ob/Je;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v6, p1}, Lcom/yandex/metrica/impl/ob/We;-><init>(Lcom/yandex/metrica/impl/ob/Je;)V

    .line 35
    .line 36
    .line 37
    move-object v1, v7

    .line 38
    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/Ye;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/fn;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Ke;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v7}, Lcom/yandex/metrica/profile/UserProfileUpdate;-><init>(Lcom/yandex/metrica/impl/ob/bf;)V

    .line 42
    .line 43
    .line 44
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
    iget-object v2, p0, Lcom/yandex/metrica/profile/GenderAttribute;->a:Lcom/yandex/metrica/impl/ob/Pe;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Pe;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/yandex/metrica/profile/GenderAttribute;->a:Lcom/yandex/metrica/impl/ob/Pe;

    .line 12
    .line 13
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/Pe;->b()Lcom/yandex/metrica/impl/ob/Kn;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v4, p0, Lcom/yandex/metrica/profile/GenderAttribute;->a:Lcom/yandex/metrica/impl/ob/Pe;

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
