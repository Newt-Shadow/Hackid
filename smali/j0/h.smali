.class public abstract Lj0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj0/h$a;
    }
.end annotation


# static fields
.field public static final a:Lj0/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lj0/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj0/h$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lj0/h;->a:Lj0/h$a;

    return-void
.end method
