.class public final Lc2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc2/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lc2/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lc2/a$a;
    .locals 2

    .line 1
    new-instance v0, Lc2/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc2/a$a;-><init>(Lc2/t;)V

    return-object v0
.end method

.method static bridge synthetic c(Lc2/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc2/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc2/a;->a:Ljava/lang/String;

    return-object v0
.end method
