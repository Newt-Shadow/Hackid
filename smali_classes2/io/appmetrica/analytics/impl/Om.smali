.class public final Lio/appmetrica/analytics/impl/Om;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/p0;

.field public final b:Lio/appmetrica/analytics/impl/mo;

.field public final c:Lio/appmetrica/analytics/impl/n;

.field public final d:Lio/appmetrica/analytics/impl/Jk;

.field public final e:Lio/appmetrica/analytics/impl/T5;

.field public final f:Lio/appmetrica/analytics/impl/oa;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/p0;Lio/appmetrica/analytics/impl/mo;)V
    .locals 8

    .line 8
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/t4;->a()Lio/appmetrica/analytics/impl/n;

    move-result-object v4

    .line 9
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/t4;->n()Lio/appmetrica/analytics/impl/Jk;

    move-result-object v5

    .line 10
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/t4;->g()Lio/appmetrica/analytics/impl/T5;

    move-result-object v6

    .line 11
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/oa;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 12
    invoke-direct/range {v1 .. v7}, Lio/appmetrica/analytics/impl/Om;-><init>(Lio/appmetrica/analytics/impl/p0;Lio/appmetrica/analytics/impl/mo;Lio/appmetrica/analytics/impl/n;Lio/appmetrica/analytics/impl/Jk;Lio/appmetrica/analytics/impl/T5;Lio/appmetrica/analytics/impl/oa;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/p0;Lio/appmetrica/analytics/impl/mo;Lio/appmetrica/analytics/impl/n;Lio/appmetrica/analytics/impl/Jk;Lio/appmetrica/analytics/impl/T5;Lio/appmetrica/analytics/impl/oa;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Om;->a:Lio/appmetrica/analytics/impl/p0;

    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Om;->b:Lio/appmetrica/analytics/impl/mo;

    .line 4
    iput-object p3, p0, Lio/appmetrica/analytics/impl/Om;->c:Lio/appmetrica/analytics/impl/n;

    .line 5
    iput-object p4, p0, Lio/appmetrica/analytics/impl/Om;->d:Lio/appmetrica/analytics/impl/Jk;

    .line 6
    iput-object p5, p0, Lio/appmetrica/analytics/impl/Om;->e:Lio/appmetrica/analytics/impl/T5;

    .line 7
    iput-object p6, p0, Lio/appmetrica/analytics/impl/Om;->f:Lio/appmetrica/analytics/impl/oa;

    return-void
.end method

.method public static a(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/gp;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/gp;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "getting intent"

    .line 7
    .line 8
    const-string v2, "activity"

    .line 9
    .line 10
    invoke-static {p0, v1, v2, v0}, Lio/appmetrica/analytics/coreutils/internal/system/SystemServiceUtils;->accessSystemServiceSafely(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/content/Intent;

    .line 15
    .line 16
    return-object p0
.end method

.method public static final b(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
