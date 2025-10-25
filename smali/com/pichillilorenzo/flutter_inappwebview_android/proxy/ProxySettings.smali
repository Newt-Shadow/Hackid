.class public Lcom/pichillilorenzo/flutter_inappwebview_android/proxy/ProxySettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pichillilorenzo/flutter_inappwebview_android/ISettings;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pichillilorenzo/flutter_inappwebview_android/ISettings<",
        "Lo1/d;",
        ">;"
    }
.end annotation


# instance fields
.field bypassRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field bypassSimpleHostnames:Ljava/lang/Boolean;

.field directs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field proxyRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/ProxyRuleExt;",
            ">;"
        }
    .end annotation
.end field

.field removeImplicitRules:Ljava/lang/Boolean;

.field reverseBypassEnabled:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/proxy/ProxySettings;->bypassRules:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/proxy/ProxySettings;->directs:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/proxy/ProxySettings;->proxyRules:Ljava/util/List;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/proxy/ProxySettings;->bypassSimpleHostnames:Ljava/lang/Boolean;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/proxy/ProxySettings;->removeImplicitRules:Ljava/lang/Boolean;

    .line 29
    .line 30
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/proxy/ProxySettings;->reverseBypassEnabled:Ljava/lang/Boolean;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public bridge synthetic getRealSettings(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 1
    check-cast p1, Lo1/d;

    invoke-virtual {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/proxy/ProxySettings;->getRealSettings(Lo1/d;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getRealSettings(Lo1/d;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo1/d;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/proxy/ProxySettings;->toMap()Ljava/util/Map;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p1}, Lo1/d;->b()Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo1/d$b;

    .line 6
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-virtual {v3}, Lo1/d$b;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "url"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "schemeFilter"

    .line 8
    invoke-virtual {v3}, Lo1/d$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, "bypassRules"

    .line 10
    invoke-virtual {p1}, Lo1/d;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "proxyRules"

    .line 11
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p1}, Lo1/d;->c()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "reverseBypassEnabled"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic parse(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview_android/ISettings;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/proxy/ProxySettings;->parse(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview_android/proxy/ProxySettings;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview_android/proxy/ProxySettings;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/proxy/ProxySettings;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "directs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_1
    const-string v2, "bypassRules"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_2
    const-string v2, "removeImplicitRules"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_3
    const-string v2, "reverseBypassEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_4
    const-string v2, "proxyRules"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_5
    const-string v2, "bypassSimpleHostnames"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 6
    :pswitch_0
    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/proxy/ProxySettings;->directs:Ljava/util/List;

    goto :goto_0

    .line 7
    :pswitch_1
    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/proxy/ProxySettings;->bypassRules:Ljava/util/List;

    goto :goto_0

    .line 8
    :pswitch_2
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/proxy/ProxySettings;->removeImplicitRules:Ljava/lang/Boolean;

    goto :goto_0

    .line 9
    :pswitch_3
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/proxy/ProxySettings;->reverseBypassEnabled:Ljava/lang/Boolean;

    goto :goto_0

    .line 10
    :pswitch_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/proxy/ProxySettings;->proxyRules:Ljava/util/List;

    .line 11
    check-cast v0, Ljava/util/List;

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 13
    invoke-static {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ProxyRuleExt;->fromMap(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/ProxyRuleExt;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 14
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/proxy/ProxySettings;->proxyRules:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 15
    :pswitch_5
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/proxy/ProxySettings;->bypassSimpleHostnames:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_9
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7abe40fa -> :sswitch_5
        -0x6fa21cd7 -> :sswitch_4
        -0x3d9f0289 -> :sswitch_3
        -0x38112012 -> :sswitch_2
        0x3ce9bcef -> :sswitch_1
        0x6391e1aa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/proxy/ProxySettings;->proxyRules:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ProxyRuleExt;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ProxyRuleExt;->toMap()Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "bypassRules"

    .line 38
    .line 39
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/proxy/ProxySettings;->bypassRules:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    const-string v2, "directs"

    .line 45
    .line 46
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/proxy/ProxySettings;->directs:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    const-string v2, "proxyRules"

    .line 52
    .line 53
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const-string v0, "bypassSimpleHostnames"

    .line 57
    .line 58
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/proxy/ProxySettings;->bypassSimpleHostnames:Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    const-string v0, "removeImplicitRules"

    .line 64
    .line 65
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/proxy/ProxySettings;->removeImplicitRules:Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    const-string v0, "reverseBypassEnabled"

    .line 71
    .line 72
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/proxy/ProxySettings;->reverseBypassEnabled:Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    return-object v1
.end method
