.class public Landroidx/webkit/internal/k1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;


# direct methods
.method public constructor <init>(Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/webkit/internal/k1;->a:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/k1;->a:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getDisabledActionModeMenuItems()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/k1;->a:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getEnterpriseAuthenticationAppLinkPolicyEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/k1;->a:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getForceDark()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/k1;->a:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getOffscreenPreRaster()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public e()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/k1;->a:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getRequestedWithHeaderOriginAllowList()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/k1;->a:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getSafeBrowsingEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/k1;->a:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->isAlgorithmicDarkeningAllowed()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public h(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/k1;->a:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setAlgorithmicDarkeningAllowed(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/k1;->a:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setDisabledActionModeMenuItems(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/k1;->a:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setEnterpriseAuthenticationAppLinkPolicyEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/k1;->a:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setForceDark(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/k1;->a:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setForceDarkBehavior(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public m(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/k1;->a:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setOffscreenPreRaster(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public n(Ljava/util/Set;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/k1;->a:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setRequestedWithHeaderOriginAllowList(Ljava/util/Set;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public o(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/k1;->a:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setSafeBrowsingEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
