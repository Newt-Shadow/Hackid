.class public Lio/appmetrica/analytics/profile/BooleanAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lio/appmetrica/analytics/impl/E6;


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/Yn;Lio/appmetrica/analytics/impl/l2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/appmetrica/analytics/impl/E6;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2, p3}, Lio/appmetrica/analytics/impl/E6;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/Yn;Lio/appmetrica/analytics/impl/l2;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/appmetrica/analytics/profile/BooleanAttribute;->a:Lio/appmetrica/analytics/impl/E6;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public withValue(Z)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/Kn;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/profile/UserProfileUpdate;

    .line 2
    .line 3
    new-instance v1, Lio/appmetrica/analytics/impl/p3;

    .line 4
    .line 5
    iget-object v2, p0, Lio/appmetrica/analytics/profile/BooleanAttribute;->a:Lio/appmetrica/analytics/impl/E6;

    .line 6
    .line 7
    iget-object v3, v2, Lio/appmetrica/analytics/impl/E6;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v2, Lio/appmetrica/analytics/impl/E6;->a:Lio/appmetrica/analytics/impl/Yn;

    .line 10
    .line 11
    new-instance v5, Lio/appmetrica/analytics/impl/J4;

    .line 12
    .line 13
    iget-object v2, v2, Lio/appmetrica/analytics/impl/E6;->b:Lio/appmetrica/analytics/impl/l2;

    .line 14
    .line 15
    invoke-direct {v5, v2}, Lio/appmetrica/analytics/impl/J4;-><init>(Lio/appmetrica/analytics/impl/l2;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, p1, v4, v5}, Lio/appmetrica/analytics/impl/p3;-><init>(Ljava/lang/String;ZLio/appmetrica/analytics/impl/Yn;Lio/appmetrica/analytics/impl/S2;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/profile/UserProfileUpdate;-><init>(Lio/appmetrica/analytics/impl/Gd;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public withValueIfUndefined(Z)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/Kn;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/profile/UserProfileUpdate;

    .line 2
    .line 3
    new-instance v1, Lio/appmetrica/analytics/impl/p3;

    .line 4
    .line 5
    iget-object v2, p0, Lio/appmetrica/analytics/profile/BooleanAttribute;->a:Lio/appmetrica/analytics/impl/E6;

    .line 6
    .line 7
    iget-object v3, v2, Lio/appmetrica/analytics/impl/E6;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v2, Lio/appmetrica/analytics/impl/E6;->a:Lio/appmetrica/analytics/impl/Yn;

    .line 10
    .line 11
    new-instance v5, Lio/appmetrica/analytics/impl/Kk;

    .line 12
    .line 13
    iget-object v2, v2, Lio/appmetrica/analytics/impl/E6;->b:Lio/appmetrica/analytics/impl/l2;

    .line 14
    .line 15
    invoke-direct {v5, v2}, Lio/appmetrica/analytics/impl/Kk;-><init>(Lio/appmetrica/analytics/impl/l2;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, p1, v4, v5}, Lio/appmetrica/analytics/impl/p3;-><init>(Ljava/lang/String;ZLio/appmetrica/analytics/impl/Yn;Lio/appmetrica/analytics/impl/S2;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/profile/UserProfileUpdate;-><init>(Lio/appmetrica/analytics/impl/Gd;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public withValueReset()Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/Kn;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/profile/UserProfileUpdate;

    .line 2
    .line 3
    new-instance v1, Lio/appmetrica/analytics/impl/Ai;

    .line 4
    .line 5
    iget-object v2, p0, Lio/appmetrica/analytics/profile/BooleanAttribute;->a:Lio/appmetrica/analytics/impl/E6;

    .line 6
    .line 7
    iget-object v3, v2, Lio/appmetrica/analytics/impl/E6;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v2, Lio/appmetrica/analytics/impl/E6;->a:Lio/appmetrica/analytics/impl/Yn;

    .line 10
    .line 11
    iget-object v2, v2, Lio/appmetrica/analytics/impl/E6;->b:Lio/appmetrica/analytics/impl/l2;

    .line 12
    .line 13
    const/4 v5, 0x3

    .line 14
    invoke-direct {v1, v5, v3, v4, v2}, Lio/appmetrica/analytics/impl/Ai;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/impl/Yn;Lio/appmetrica/analytics/impl/l2;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/profile/UserProfileUpdate;-><init>(Lio/appmetrica/analytics/impl/Gd;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method
