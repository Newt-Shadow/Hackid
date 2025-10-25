.class public final Lc2/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc2/q$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lc2/q$a;Lc2/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lc2/q$a;->c(Lc2/q$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc2/q;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Lc2/q$a;
    .locals 2

    .line 1
    new-instance v0, Lc2/q$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc2/q$a;-><init>(Lc2/x0;)V

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc2/q;->a:Ljava/lang/String;

    return-object v0
.end method
