.class public final Lc2/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc2/p$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lc2/p$a;Lc2/w0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lc2/p$a;->c(Lc2/p$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc2/p;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Lc2/p$a;
    .locals 2

    .line 1
    new-instance v0, Lc2/p$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc2/p$a;-><init>(Lc2/v0;)V

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc2/p;->a:Ljava/lang/String;

    return-object v0
.end method
