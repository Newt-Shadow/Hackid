.class public final Lio/appmetrica/analytics/impl/k8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Yn;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Wn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/appmetrica/analytics/impl/Wn;"
        }
    .end annotation

    .line 1
    new-instance p1, Lio/appmetrica/analytics/impl/Wn;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const-string v1, ""

    .line 5
    .line 6
    invoke-direct {p1, p0, v0, v1}, Lio/appmetrica/analytics/impl/Wn;-><init>(Lio/appmetrica/analytics/impl/Yn;ZLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object p1
.end method
