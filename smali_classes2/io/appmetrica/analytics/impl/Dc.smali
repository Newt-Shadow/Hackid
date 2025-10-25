.class public final Lio/appmetrica/analytics/impl/Dc;
.super Lio/appmetrica/analytics/impl/t5;
.source "SourceFile"


# instance fields
.field public final n:Lio/appmetrica/analytics/impl/dk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/Ql;Lio/appmetrica/analytics/impl/ih;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;ILio/appmetrica/analytics/impl/dk;Lio/appmetrica/analytics/impl/Qb;Lio/appmetrica/analytics/impl/D9;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object v3, p3

    .line 5
    move-object v4, p4

    .line 6
    move-object/from16 v5, p5

    .line 7
    .line 8
    move-object/from16 v6, p6

    .line 9
    .line 10
    move-object/from16 v7, p7

    .line 11
    .line 12
    move/from16 v8, p8

    .line 13
    .line 14
    move-object/from16 v9, p10

    .line 15
    .line 16
    move-object/from16 v10, p11

    .line 17
    .line 18
    invoke-direct/range {v0 .. v10}, Lio/appmetrica/analytics/impl/t5;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/Ql;Lio/appmetrica/analytics/impl/ih;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;ILio/appmetrica/analytics/impl/Qb;Lio/appmetrica/analytics/impl/D9;)V

    .line 19
    .line 20
    .line 21
    move-object/from16 v1, p9

    .line 22
    .line 23
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Dc;->n:Lio/appmetrica/analytics/impl/dk;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/G9;Lio/appmetrica/analytics/impl/W6;Lio/appmetrica/analytics/impl/Og;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/Ue;)Lio/appmetrica/analytics/impl/B9;
    .locals 7

    .line 22
    iget-object v0, p0, Lio/appmetrica/analytics/impl/t5;->l:Lio/appmetrica/analytics/impl/D9;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lio/appmetrica/analytics/impl/D9;->a(Lio/appmetrica/analytics/impl/G9;Lio/appmetrica/analytics/impl/W6;Lio/appmetrica/analytics/impl/Og;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/Ue;)Lio/appmetrica/analytics/impl/C9;

    move-result-object p1

    .line 23
    invoke-interface {p1}, Lio/appmetrica/analytics/impl/C9;->a()Lio/appmetrica/analytics/impl/B9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/Bc;)Lio/appmetrica/analytics/impl/j3;
    .locals 9

    .line 1
    new-instance v7, Lio/appmetrica/analytics/impl/j3;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/t5;->c:Landroid/content/Context;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Dc;->n:Lio/appmetrica/analytics/impl/dk;

    .line 2
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/dk;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Dc;->n:Lio/appmetrica/analytics/impl/dk;

    .line 3
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/dk;->f()Ljava/util/concurrent/Executor;

    move-result-object v3

    const/4 v0, 0x0

    :try_start_0
    const-string v4, "com.android.billingclient.BuildConfig"

    .line 4
    invoke-static {v4}, Lio/appmetrica/analytics/coreutils/internal/reflection/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "VERSION_NAME"

    .line 5
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v0

    .line 7
    :goto_0
    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-object v4, v0

    :goto_1
    if-eqz v4, :cond_7

    .line 8
    invoke-static {v4}, Lrd/n;->b0(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    const-string v5, "2."

    const/4 v6, 0x0

    const/4 v8, 0x2

    .line 9
    invoke-static {v4, v5, v6, v8, v0}, Lrd/n;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v0, Lio/appmetrica/analytics/billinginterface/internal/BillingType;->NONE:Lio/appmetrica/analytics/billinginterface/internal/BillingType;

    goto :goto_3

    :cond_2
    const-string v5, "3."

    .line 10
    invoke-static {v4, v5, v6, v8, v0}, Lrd/n;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v0, Lio/appmetrica/analytics/billinginterface/internal/BillingType;->NONE:Lio/appmetrica/analytics/billinginterface/internal/BillingType;

    goto :goto_3

    :cond_3
    const-string v5, "4."

    .line 11
    invoke-static {v4, v5, v6, v8, v0}, Lrd/n;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v0, Lio/appmetrica/analytics/billinginterface/internal/BillingType;->NONE:Lio/appmetrica/analytics/billinginterface/internal/BillingType;

    goto :goto_3

    :cond_4
    const-string v5, "5."

    .line 12
    invoke-static {v4, v5, v6, v8, v0}, Lrd/n;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v0, Lio/appmetrica/analytics/billinginterface/internal/BillingType;->LIBRARY_V6:Lio/appmetrica/analytics/billinginterface/internal/BillingType;

    goto :goto_3

    :cond_5
    const-string v5, "6."

    .line 13
    invoke-static {v4, v5, v6, v8, v0}, Lrd/n;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lio/appmetrica/analytics/billinginterface/internal/BillingType;->LIBRARY_V6:Lio/appmetrica/analytics/billinginterface/internal/BillingType;

    goto :goto_3

    .line 14
    :cond_6
    sget-object v0, Lio/appmetrica/analytics/billinginterface/internal/BillingType;->LIBRARY_V6:Lio/appmetrica/analytics/billinginterface/internal/BillingType;

    goto :goto_3

    .line 15
    :cond_7
    :goto_2
    sget-object v0, Lio/appmetrica/analytics/billinginterface/internal/BillingType;->NONE:Lio/appmetrica/analytics/billinginterface/internal/BillingType;

    :goto_3
    move-object v4, v0

    .line 16
    new-instance v5, Lio/appmetrica/analytics/impl/f3;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/t5;->c:Landroid/content/Context;

    .line 17
    const-class v6, Lio/appmetrica/analytics/impl/s2;

    invoke-static {v6}, Lio/appmetrica/analytics/impl/Bm;->a(Ljava/lang/Class;)Lio/appmetrica/analytics/impl/Cm;

    move-result-object v6

    invoke-virtual {v6, v0}, Lio/appmetrica/analytics/impl/Cm;->a(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    move-result-object v0

    invoke-direct {v5, v0}, Lio/appmetrica/analytics/impl/f3;-><init>(Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;)V

    .line 18
    new-instance v6, Lio/appmetrica/analytics/impl/e3;

    .line 19
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->w()Lio/appmetrica/analytics/impl/dk;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/dk;->e()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v0

    .line 20
    invoke-direct {v6, p1, v0}, Lio/appmetrica/analytics/impl/e3;-><init>(Lio/appmetrica/analytics/impl/bb;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;)V

    move-object v0, v7

    .line 21
    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/j3;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lio/appmetrica/analytics/billinginterface/internal/BillingType;Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoStorage;Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoSender;)V

    return-object v7
.end method

.method public final b(Lio/appmetrica/analytics/impl/Bc;)Lio/appmetrica/analytics/impl/ng;
    .locals 3

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/ng;

    .line 2
    .line 3
    new-instance v1, Lio/appmetrica/analytics/impl/je;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lio/appmetrica/analytics/impl/je;-><init>(Lio/appmetrica/analytics/impl/Ya;)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lio/appmetrica/analytics/impl/Ac;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, p1}, Lio/appmetrica/analytics/impl/Ac;-><init>(Lio/appmetrica/analytics/impl/Bc;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1, v2, p1}, Lio/appmetrica/analytics/impl/ng;-><init>(Lio/appmetrica/analytics/impl/Za;Lio/appmetrica/analytics/impl/ig;Lio/appmetrica/analytics/impl/Xa;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
