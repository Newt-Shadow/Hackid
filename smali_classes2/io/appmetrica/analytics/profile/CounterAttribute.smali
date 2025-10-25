.class public final Lio/appmetrica/analytics/profile/CounterAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lio/appmetrica/analytics/impl/E6;


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/Bb;Lio/appmetrica/analytics/impl/Rb;)V
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
    iput-object v0, p0, Lio/appmetrica/analytics/profile/CounterAttribute;->a:Lio/appmetrica/analytics/impl/E6;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public withDelta(D)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
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
    new-instance v1, Lio/appmetrica/analytics/impl/f6;

    .line 4
    .line 5
    iget-object v2, p0, Lio/appmetrica/analytics/profile/CounterAttribute;->a:Lio/appmetrica/analytics/impl/E6;

    .line 6
    .line 7
    iget-object v2, v2, Lio/appmetrica/analytics/impl/E6;->c:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v1, v2, p1, p2}, Lio/appmetrica/analytics/impl/f6;-><init>(Ljava/lang/String;D)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/profile/UserProfileUpdate;-><init>(Lio/appmetrica/analytics/impl/Gd;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
