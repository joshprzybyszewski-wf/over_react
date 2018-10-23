part of over_react.component_declaration.flux_component_test;

@Factory()
UiFactory<TestStoreHandlersProps> TestStatefulStoreHandlers;

@Props()
class TestStatefulStoreHandlersProps extends FluxUiProps<TestActions, TestStore> implements TestStoreHandlersProps {}

@Component()
class TestStatefulStoreHandlersComponent extends FluxUiComponent<TestStatefulStoreHandlersProps> {
  int numberOfHandlerCalls = 0;

  @override
  render() => Dom.div()();

  @override
  getStoreHandlers() => {props.store: increment};

  increment(Store store) {
    numberOfHandlerCalls += 1;
  }
}
