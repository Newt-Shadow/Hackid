.class public abstract Lio/appmetrica/analytics/impl/Mf;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lio/appmetrica/analytics/impl/p9;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event sent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget v1, p0, Lio/appmetrica/analytics/impl/p9;->c:I

    iget-object v2, p0, Lio/appmetrica/analytics/impl/p9;->d:Ljava/lang/String;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/p9;->e:[B

    const/4 v3, 0x1

    if-eq v1, v3, :cond_e

    const/4 v3, 0x2

    if-eq v1, v3, :cond_d

    const/4 v3, 0x4

    if-eq v1, v3, :cond_a

    const/4 p0, 0x5

    if-eq v1, p0, :cond_9

    const/4 p0, 0x7

    if-eq v1, p0, :cond_8

    const/16 p0, 0xd

    if-eq v1, p0, :cond_7

    const/16 p0, 0x23

    if-eq v1, p0, :cond_6

    const/16 p0, 0x28

    if-eq v1, p0, :cond_5

    const/16 p0, 0x2a

    if-eq v1, p0, :cond_4

    const/16 p0, 0x10

    if-eq v1, p0, :cond_3

    const/16 p0, 0x11

    if-eq v1, p0, :cond_2

    const/16 p0, 0x14

    if-eq v1, p0, :cond_1

    const/16 p0, 0x15

    if-eq v1, p0, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "type="

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5
    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Crash: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_2
    const-string p0, "ANR"

    goto :goto_0

    :cond_0
    const-string p0, "Revenue"

    goto :goto_0

    :cond_1
    const-string p0, "User profile update"

    goto :goto_0

    :cond_2
    const-string p0, "Update"

    goto :goto_0

    :cond_3
    const-string p0, "Open"

    goto :goto_0

    :cond_4
    const-string p0, "External attribution"

    goto :goto_0

    :cond_5
    const-string p0, "Ad revenue (ILRD)"

    goto :goto_0

    :cond_6
    const-string p0, "E-Commerce"

    goto :goto_0

    :cond_7
    const-string p0, "The very first event"

    goto :goto_0

    :cond_8
    const-string p0, "Session heartbeat"

    goto :goto_0

    :cond_9
    const-string p0, "Referrer"

    goto :goto_0

    .line 6
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    if-nez v2, :cond_b

    const-string v2, "null"

    :cond_b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_c

    .line 7
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lrd/d;->b:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_c

    const-string p0, " with value "

    .line 9
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_d
    const-string p0, "Session start"

    goto :goto_0

    :cond_e
    const-string p0, "Attribution"

    .line 12
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final a(Ljava/lang/String;Lio/appmetrica/analytics/impl/nb;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 13
    iget v0, p1, Lio/appmetrica/analytics/impl/nb;->a:I

    .line 14
    sget-object v1, Lio/appmetrica/analytics/impl/H9;->d:Ljava/util/EnumSet;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/nb;->a(I)Lio/appmetrica/analytics/impl/nb;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    sget-object p0, Lio/appmetrica/analytics/impl/H9;->f:Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 20
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, " with name "

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    :cond_0
    sget-object p0, Lio/appmetrica/analytics/impl/H9;->e:Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 24
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, " with value "

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
