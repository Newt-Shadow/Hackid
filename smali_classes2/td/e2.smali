.class public final Ltd/e2;
.super Lyd/p;
.source "SourceFile"

# interfaces
.implements Ltd/p1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lyd/p;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b()Ltd/e2;
    .locals 0

    .line 1
    return-object p0
.end method

.method public isActive()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lyd/q;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
