.class public Lcom/pichillilorenzo/flutter_inappwebview_android/Util$PrivateKeyAndCertificates;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pichillilorenzo/flutter_inappwebview_android/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivateKeyAndCertificates"
.end annotation


# instance fields
.field public certificates:[Ljava/security/cert/X509Certificate;

.field public privateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/Util$PrivateKeyAndCertificates;->privateKey:Ljava/security/PrivateKey;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/Util$PrivateKeyAndCertificates;->certificates:[Ljava/security/cert/X509Certificate;

    .line 7
    .line 8
    return-void
.end method
