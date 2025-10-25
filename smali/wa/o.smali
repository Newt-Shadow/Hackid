.class public Lwa/o;
.super Lwa/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lwa/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lwa/h;-><init>(Landroid/content/Context;Lwa/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "VGhpcyBpcyB0aGUga2V5IGZvcihBIHNlY3XyZZBzdG9yYWdlIEFFUyBLZXkK"

    return-object v0
.end method

.method protected c()Ljavax/crypto/Cipher;
    .locals 1

    .line 1
    const-string v0, "AES/GCM/NoPadding"

    .line 2
    .line 3
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected d()I
    .locals 1

    .line 1
    const/16 v0, 0xc

    return v0
.end method

.method protected e([B)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2

    .line 1
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
