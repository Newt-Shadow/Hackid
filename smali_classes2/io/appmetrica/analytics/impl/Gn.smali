.class public final Lio/appmetrica/analytics/impl/Gn;
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
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Pg;->a:Lio/appmetrica/analytics/impl/o5;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/o5;->c:Lio/appmetrica/analytics/impl/Ue;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Ue;->i()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object p1, p1, Lio/appmetrica/analytics/impl/e6;->h:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Pg;->a:Lio/appmetrica/analytics/impl/o5;

    .line 12
    .line 13
    iget-object v1, v1, Lio/appmetrica/analytics/impl/o5;->c:Lio/appmetrica/analytics/impl/Ue;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/Ue;->j(Ljava/lang/String;)Lio/appmetrica/analytics/impl/Ue;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Ve;->b()V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Pg;->a:Lio/appmetrica/analytics/impl/o5;

    .line 29
    .line 30
    invoke-static {}, Lio/appmetrica/analytics/impl/e4;->o()Lio/appmetrica/analytics/impl/e6;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/impl/o5;->a(Lio/appmetrica/analytics/impl/e6;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    return p1
.end method
