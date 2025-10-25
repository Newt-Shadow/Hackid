.class public final Lio/appmetrica/analytics/impl/Ui;
.super Lio/appmetrica/analytics/impl/Pg;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/o5;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Pg;-><init>(Lio/appmetrica/analytics/impl/o5;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/e6;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lio/appmetrica/analytics/impl/e6;->h:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Pg;->a:Lio/appmetrica/analytics/impl/o5;

    .line 10
    .line 11
    iget-object v0, v0, Lio/appmetrica/analytics/impl/o5;->c:Lio/appmetrica/analytics/impl/Ue;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Ue;->j(Ljava/lang/String;)Lio/appmetrica/analytics/impl/Ue;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Ve;->b()V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1
.end method
