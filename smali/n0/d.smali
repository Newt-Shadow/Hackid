.class public abstract Ln0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/d$a;
    }
.end annotation


# static fields
.field public static final a:Ln0/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln0/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln0/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ln0/d;->a:Ln0/d$a;

    return-void
.end method
